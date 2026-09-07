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
  final List<Map<String, String>> _messages = [
    {
      'role': 'assistant',
      'content': 'أهلاً بك يا فنان. أنا المساعد المسرحي في أكاديمية المسرح؛ كيف يمكنني مساعدتك في التمثيل، الإخراج، أو النصوص اليوم؟'
    }
  ];
  bool _isLoading = false;

  // مفتاح OpenAI API الخاص بك الذي أرسلته
  final String _apiKey = 'sk-proj-YOUR_API_KEY_HERE'; // سيتم استبداله بمفتاحك الحقيقي

  Future<void> _sendMessage() async {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    setState(() {
      _messages.add({'role': 'user', 'content': text});
      _isLoading = true;
    });
    _controller.clear();

    try {
      final List<Map<String, String>> apiMessages = [
        {
          'role': 'system',
          'content': 'أنت المساعد المسرحي في أكاديمية المسرح. متخصص في التمثيل والإخراج والسينوغرافيا والإضاءة والكتابة المسرحية والتعليم المسرحي. أجب باللغة العربية وبأسلوب واضح ومفيد للطلاب.'
        },
        ..._messages.map((m) => {'role': m['role']!, 'content': m['content']!})
      ];

      final response = await http.post(
        Uri.parse('https://api.openai.com/v1/chat/completions'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $_apiKey',
        },
        body: jsonEncode({
          'model': 'gpt-4o-mini',
          'messages': apiMessages,
          'temperature': 0.7,
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(utf8.decode(response.bodyBytes));
        final aiReply = data['choices'][0]['message']['content'] ?? 'عذراً، لم أتمكن من صياغة الإجابة.';
        setState(() {
          _messages.add({'role': 'assistant', 'content': aiReply});
        });
      } else {
        setState(() {
          _messages.add({'role': 'assistant', 'content': 'حدث خطأ في الاتصال بالمنصة. تأكد من صحة المفتاح.'});
        });
      }
    } catch (e) {
      setState(() {
        _messages.add({'role': 'assistant', 'content': 'تأكد من اتصالك بالإنترنت.'});
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text('المساعد المسرحي الذكي'),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final msg = _messages[index];
                if (msg['role'] == 'system') return const SizedBox.shrink();
                
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: LinearProgressIndicator(color: Colors.amber),
            ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            color: const Color(0xFF1E1E1E),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: 'اسأل عن التمثيل، الإخراج، أو النصوص...',
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.white54),
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send_rounded, color: Colors.amber),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
