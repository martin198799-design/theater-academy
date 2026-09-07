import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TheaterAssistantScreen extends StatefulWidget {
  const TheaterAssistantScreen({super.key});

  @override
  State<TheaterAssistantScreen> createState() => _TheaterAssistantScreenState();
}

class _TheaterAssistantScreenState extends State<TheaterAssistantScreen> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final List<Map<String, String>> _messages = [
    {
      'role': 'assistant',
      'content': 'أهلاً بك يا فنان في أكاديمية المسرح. أنا مساعدك الذكي المتخصص في شؤون التمثيل، الإخراج، والنصوص. كيف يمكنني إفادتك اليوم؟'
    }
  ];

  bool _isLoading = false;

  // تم وضع المفتاح الخاص بك في المكان الصحيح هنا
  final String _apiKey = 'AQ.Ab8RN6Ks2WgcUNll_Z00tHiqRQBYDmbTedEKCdUg5bQhbChAwA';

  Future<void> _callGeminiAI(String userMessage) async {
    try {
      final url = Uri.parse('https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=$_apiKey');
      
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "contents": [
            {
              "parts": [
                {"text": "أنت مساعد ذكي وخبير في الفنون المسرحية (التمثيل، الإخراج، كتابة النصوص، والسينوغرافيا). أجب المبتدئين والمحترفين بدقة وإبداع باللغة العربية.\n\nالسؤال: $userMessage"}
              ]
            }
          ]
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(utf8.decode(response.bodyBytes));
        final aiReply = data['candidates'][0]['content']['parts'][0]['text'].trim();

        setState(() {
          _messages.add({'role': 'assistant', 'content': aiReply});
          _isLoading = false;
        });
      } else {
        setState(() {
          _messages.add({
            'role': 'assistant',
            'content': 'عذراً، حدث خطأ في الاتصال (رمز الخطأ: ${response.statusCode}). تأكد من صحة المفتاح.'
          });
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _messages.add({
          'role': 'assistant',
          'content': 'تعذر الاتصال بالخادم. تأكد من اتصالك بالإنترنت.'
        });
        _isLoading = false;
      });
    }

    _scrollToBottom();
  }

  void _handleSubmittedText(String text) {
    if (text.trim().isEmpty) return;

    _controller.clear();
    setState(() {
      _messages.add({'role': 'user', 'content': text});
      _isLoading = true;
    });

    _scrollToBottom();
    _callGeminiAI(text);
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text('المساعد المسرحي الذكي (Gemini)', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.all(16),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final msg = _messages[index];
                  final isUser = msg['role'] == 'user';
                  return Align(
                    alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      padding: const EdgeInsets.all(14),
                      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
                      decoration: BoxDecoration(
                        color: isUser ? Colors.amber.shade800 : const Color(0xFF2A2A2A),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        msg['content'] ?? '',
                        style: const TextStyle(color: Colors.white, height: 1.6, fontSize: 15),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  );
                },
              ),
            ),
            if (_isLoading)
              const LinearProgressIndicator(color: Colors.amber, backgroundColor: Color(0xFF1E1E1E)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              color: const Color(0xFF1E1E1E),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.send_rounded, color: Colors.amber),
                    onPressed: () => _handleSubmittedText(_controller.text),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      style: const TextStyle(color: Colors.white),
                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(
                        hintText: 'اسأل المساعد الذكي عن المسرح...',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.white54),
                      ),
                      onSubmitted: _handleSubmittedText,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
