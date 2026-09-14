import 'package:flutter/material.dart';

class AiTheatreBotScreen extends StatefulWidget {
  const AiTheatreBotScreen({Key? key}) : super(key: key);

  @override
  State<AiTheatreBotScreen> createState() => _AiTheatreBotScreenState();
}

class _AiTheatreBotScreenState extends State<AiTheatreBotScreen> {
  String _selectedSection = 'محادثة';
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  
  final List<Map<String, String>> _messages = [
    {
      'sender': 'bot',
      'text': 'أهلاً بك في مساعد المسرح الذكي 🎭. كيف يمكنني مساعدتك في عملك الفني اليوم؟'
    }
  ];

  final List<String> _sections = [
    'محادثة',
    'تحليل نص مسرحي',
    'مساعد الممثل',
    'مساعد المخرج',
    'مساعد الإضاءة',
    'توليد أفكار مسرحية'
  ];

  // دالة لتوليد رد ذكي بناءً على القسم والمدخلات
  String _generateBotResponse(String section, String userQuery) {
    if (section == 'تحليل نص مسرحي') {
      return 'تحليل نص "$userQuery":\n1. البناء الدرامي: يتميز بتصاعد الصراع النفسي والدرامي.\n2. الشخصيات: عميقة الأبعاد وتحمل دلالات رمزية وفلسفية.\n3. الفكرة العامة: استكشاف أعماق النفس البشرية وصراعها مع القدر أو المجتمع.';
    } else if (section == 'مساعد الممثل') {
      return 'نصائح أدائية لطلبك ($userQuery):\n- التركيز على الذاكرة الانفعالية واستدعاء الشعور الداخلي.\n- الاهتمام بلغة الجسد والإيقاع الصوتي لتوصيل الدافع الخفي للشخصية.';
    } else if (section == 'مساعد المخرج') {
      return 'رؤية إخراجية مقترحة لـ ($userQuery):\n- التكوين البشري على خشبة المسرح يجب أن يعكس صراع السلطة أو العزلة.\n- توظيف الإيقاع البصري والسمعي لخدمة ذروة المشهد (Climax).';
    } else if (section == 'مساعد الإضاءة') {
      return 'توزيع الإضاءة المقترح لـ ($userQuery):\n- استخدام الإضاءة المركزية (Spotlight) لتسليط الضوء على الصراع الداخلي.\n- درجات الألوان الباردة أو الدافئة تعتمد على الحالة النفسية للمشهد.';
    } else if (section == 'توليد أفكار مسرحية') {
      return 'مقترح درامي جديد مستوحى من طلبك:\n- فكرة عرض تجريبي قصير يعتمد على الفضاء الفارغ (المسرح الفقير).\n- الصراع يدور حول مواجهة الإنسان لذكرياته وسط ديكور تجريدي رمزي.';
    } else {
      return 'أنا هنا لمساعدتك في كل ما يتعلق بالمسرح وعناصره الفنية. تفضل بطرح المزيد من التفاصيل حول "$userQuery".';
    }
  }

  void _sendMessage() {
    if (_messageController.text.trim().isEmpty) return;

    final userMessage = _messageController.text;
    
    setState(() {
      _messages.add({'sender': 'user', 'text': userMessage});
      _messageController.clear();
    });

    _scrollToBottom();

    // محاكاة وقت التفكير ثم إرسال الرد الحقيقي
    Future.delayed(const Duration(milliseconds: 600), () {
      final botReply = _generateBotResponse(_selectedSection, userMessage);
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
                          'text': 'تم الانتقال إلى قسم: $section. تفضل بطرح سؤالك أو نصك.'
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
                      maxWidth: MediaQuery.of(context).size.width * 0.8,
                    ),
                    child: Text(
                      msg['text'] ?? '',
                      style: const TextStyle(color: Colors.white, fontSize: 15),
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
                      hintText: 'اكتب سؤالك المسرحي هنا...',
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
