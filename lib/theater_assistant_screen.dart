import 'package:flutter/material.dart';

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

  void _handleSubmittedText(String text) {
    if (text.trim().isEmpty) return;
    
    _controller.clear();
    setState(() {
      _messages.add({'role': 'user', 'content': text});
      _isLoading = true;
    });

    // التمرير تلقائياً لأسفل المحادثة
    _scrollToBottom();

    // محاكاة استجابة الذكاء الاصطناعي المسرحي بدقة
    Future.delayed(const Duration(milliseconds: 600), () {
      String reply = _getTheaterExpertise(text);
      setState(() {
        _messages.add({'role': 'assistant', 'content': reply});
        _isLoading = false;
      });
      _scrollToBottom();
    });
  }

  String _getTheaterExpertise(String query) {
    final q = query.trim().toLowerCase();
    if (q.contains('تمثيل') || q.contains('ممثل') || q.contains('تقمص') || q.contains('شخصية')) {
      return 'فن التمثيل يعتمد على الصدق الداخلي، دراسة أبعاد الشخصية (الجسدية والنفسية والاجتماعية)، وتوظيف أدوات الممثل الأساسية: الصوت والجسد.';
    } else if (q.contains('إخراج') || q.contains('مخرج') || q.contains('سينوغرافيا')) {
      return 'الإخراج المسرحي هو صياغة الرؤية البصرية والفكرية للعرض، وتنسيق العمل المشترك بين الممثلين وفريق السينوغرافيا من إضاءة وديكور.';
    } else if (q.contains('نص') || q.contains('مسرحية') || q.contains('حوار')) {
      return 'النص المسرحي الحقيقي يبني صراعاً درامياً متصاعداً، ويحتوي على حوار مكثف يعبر عن الصراع الداخلي والخارجي للشخصيات.';
    } else {
      return 'سؤال دقيق يا فنان! في أكاديمية المسرح، نربط دائماً بين الفكرة الإخراجية والتطبيق العملي للممثل على الخشبة. هل ترغب في تفصيل هذا الجانب أكثر؟';
    }
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
        title: const Text('المساعد المسرحي الذكي', style: TextStyle(color: Colors.white)),
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
                        hintText: 'اكتب سؤالك المسرحي هنا...',
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
