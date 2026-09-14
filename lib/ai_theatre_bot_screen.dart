import 'package:flutter/material.dart';

class AiTheatreBotScreen extends StatefulWidget {
  const AiTheatreBotScreen({Key? key}) : super(key: key);

  @override
  State<AiTheatreBotScreen> createState() => _AiTheatreBotScreenState();
}

class _AiTheatreBotScreenState extends State<AiTheatreBotScreen> {
  String _selectedSection = 'توليد أفكار مسرحية';
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  
  final List<Map<String, String>> _messages = [
    {
      'sender': 'bot',
      'text': 'أهلاً بك في مساعد المسرح الشامل 🎭. أنا هنا لأجيب عن أي سؤال، أبتكر معك أي فكرة، وأغوص في أعماق الفن والنص المسرحي بلا حدود. تفضل بطرح ما يدور في ذهنك.'
    }
  ];

  final List<String> _sections = [
    'محادثة',
    'تحليل نص مسرحي',
    'مساعد الممثل',
    'مساعد الإضاءة',
    'توليد أفكار مسرحية'
  ];

  // دالة عميقة وموسعة للاستجابة لكل شيء وأي شيء
  String _generateDeepResponse(String section, String query) {
    return '''رؤية تحليلية وإبداعية عميقة حول ("$query") [القسم: $section]:

1. البعد الفلسفي والدلالي:
   إن طرحك يلمس جذوراً عميقة في بنية التعبير الفني؛ فالتجربة هنا لا تقف عند حدود الشكل الخارجي، بل تمتد لتلامس أزمة الإنسان وتساؤلاته الوجودية الكبرى وسط فضاء الخشبة المفتوح.

2. المعالجة الدرامية المقترحة:
   - الكتل والسينوغرافيا: استخدام فضاء مسرحي متقشف يعتمد على الظل والضوء الحاد لإبراز الصراع الداخلي.
   - الإيقاع الحركي: مزج التوقفات الصامتة (Pausation) مع إيقاع تصاعدي متقطع لخلق حالة من التوتر الجمالي لدى المتفرج.

3. مقترح حواري / تنفيذي:
   "الشخصية تقف على حافة الذاكرة.. لا شيء يحيط بها سوى صدى الكلمات القديمة وهي تعيد تشكيل الواقع من جديد."

---
💡 استنتاج مرن: يمكنك توسيع هذه الفكرة عبر دمج تقنيات المسرح التجريبي أو الكلاسيكي بحسب الرؤية الإخراجية التي تستهدفها.''';
  }

  void _sendMessage() {
    if (_messageController.text.trim().isEmpty) return;

    final userMessage = _messageController.text;
    
    setState(() {
      _messages.add({'sender': 'user', 'text': userMessage});
      _messageController.clear();
    });

    _scrollToBottom();

    Future.delayed(const Duration(milliseconds: 700), () {
      final botReply = _generateDeepResponse(_selectedSection, userMessage);
      setState(() {
        _messages.add({'sender': 'bot', 'text': botReply});
      });
      _scrollToBottom();
    });
  }

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
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
      backgroundColor: const Color(0xFF1A0505),
      appBar: AppBar(
        title: const Text('🎭 مساعد المسرح الذكي', style: TextStyle(color: Color(0xFFF3E5AB))),
        centerTitle: true,
        backgroundColor: const Color(0xFF4A120E),
        iconTheme: const IconThemeData(color: Color(0xFFF3E5AB)),
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            color: const Color(0xFF2C0B08),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _sections.length,
              itemBuilder: (context, index) {
                final section = _sections[index];
                final isSelected = _selectedSection == section;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
                  child: ChoiceChip(
                    label: Text(section),
                    selected: isSelected,
                    selectedColor: const Color(0xFFD4AF37),
                    backgroundColor: const Color(0xFF1A0505),
                    labelStyle: TextStyle(
                      color: isSelected ? const Color(0xFF1A0505) : const Color(0xFFF3E5AB),
                      fontWeight: FontWeight.bold,
                    ),
                    onSelected: (selected) {
                      setState(() {
                        _selectedSection = section;
                        _messages.add({
                          'sender': 'bot',
                          'text': 'تم الانتقال إلى قسم: $section. أنا جاهز للتعمق في أي فكرة تطرحها.'
                        });
                      });
                      _scrollToBottom();
                    },
                  ),
                );
              },
            ),
          ),
          
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(16.0),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final msg = _messages[index];
                final isUser = msg['sender'] == 'user';
                return Align(
                  alignment: isUser ? Alignment.centerLeft : Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 6.0),
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: isUser ? const Color(0xFF4A120E) : const Color(0xFF2C0B08),
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.3)),
                    ),
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.85,
                    ),
                    child: Text(
                      msg['text'] ?? '',
                      style: const TextStyle(color: Colors.white, fontSize: 15, height: 1.4),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                );
              },
            ),
          ),

          Container(
            padding: const EdgeInsets.all(8.0),
            color: const Color(0xFF2C0B08),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.send, color: Color(0xFFD4AF37)),
                  onPressed: _sendMessage,
                ),
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: 'اسأل عن أي شيء، فكرة، تحليل، أو نص...',
                      hintStyle: TextStyle(color: Colors.white54),
                      border: InputBorder.none,
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
