import 'package:flutter/material.dart';

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
      'content': 'أهلاً بك يا فنان في أكاديمية المسرح. أنا مساعدك المسرحي الذكي (يعمل محلياً بدون إنترنت). كيف يمكنني مساعدتك في التمثيل، الإخراج، أو النصوص اليوم؟'
    }
  ];
  bool _isLoading = false;

  // نظام ذكي محلي للرد على أسئلة المسرح والتمثيل والإخراج
  String _getLocalAIResponse(String query) {
    final q = query.trim().toLowerCase();

    if (q.contains('تمثيل') || q.contains('ممثل') || q.contains('تقمص') || q.contains('شخصية')) {
      return 'فن التمثيل يعتمد على الصدق الداخلي والإحساس بالدور. من أهم تقنيات التمثيل الحديثة بناء الخلفية النفسية للشخصية، دراسة دوافعها، وتفاعل الجسد والصوت مع النص المكتوب (مثل تقنيات ستانسلافسكي).';
    } else if (q.contains('إخراج') || q.contains('مخرج') || q.contains('رؤية') || q.contains('سينوغرافيا')) {
      return 'الإخراج المسرحي هو عملية خلق رؤية بصرية وفكرية متكاملة للنص. يبدأ بتفكيك النص، تحديد المفهوم الإخراجي (Concept)، وتنسيق عناصر العرض من إضاءة، وديكور، وصوت، وحركة ممثلين على خشبة المسرح.';
    } else if (q.contains('نص') || q.contains('مسرحية') || q.contains('حوار') || q.contains('مشهد')) {
      return 'الكتابة المسرحية المتميزة تعتمد على الصراع القوي، الحوار المكثف الذي يكشف خبايا الشخصيات، والبناء الدرامي المحكم (بداية، ذروة، ونهاية). هل تبحث عن تحليل نص معين أو فكرة لمشهد جديد؟';
    } else if (q.contains('إضاءة') || q.contains('صوت') || q.contains('ديكور')) {
      return 'السينوغرافيا (الإضاءة، الديكور، المؤثرات الصوتية) هي لغة المسرح الصامتة. الإضاءة مثلاً تحدد المزاج النفسي والزمن، بينما الديكور يعكس البيئة الاجتماعية والنفسية للشخصيات.';
    } else {
      return 'سؤال ممتاز يا فنان! في أكاديمية المسرح، نركز دائماً على تكامل الأدوات الفنية (الجسد، الصوت، الفكر الإخراجي). هل ترغب في تعميق هذا السؤال باتجاه التمثيل أم الإخراج؟';
    }
  }

  void _sendMessage() async {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    setState(() {
      _messages.add({'role': 'user', 'content': text});
      _isLoading = true;
    });
    _controller.clear();

    // محاكاة تفكير الذكاء الاصطناعي بشكل سريع وطبيعي
    await Future.delayed(const Duration(milliseconds: 600));

    final aiReply = _getLocalAIResponse(text);

    setState(() {
      _messages.add({'role': 'assistant', 'content': aiReply});
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text('المساعد المسرحي الذكي (محلي)'),
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
