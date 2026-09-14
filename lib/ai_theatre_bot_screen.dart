import 'package:flutter/material.dart';
import 'math.dart' as math;

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
      'text': 'أهلاً بك في مساعد المسرح الذكي 🎭. جاهز الآن لتوليد الأفكار الدرامية وكتابة المشاهد الحوارية.'
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

  // دالة متقدمة لتوليد مشاهد مسرحية وأفكار درامية تفصيلية
  String _generateAdvancedResponse(String section, String query) {
    if (section == 'توليد أفكار مسرحية' || query.contains('مشهد') || query.contains('حوار') || query.contains('اكتب')) {
      return '''مقترح مشهد مسرحي (مستوحى من طلبك):
      
العنوان: صراع الذاكرة والظل
الشخصيات:
- (أ): شخصية تبحث عن هويتها وسط الفراغ.
- (ب): صوت داخلي أو مراقب يثير الأسئلة.

(يبدأ المشهد بإضاءة خافتة تسلط على كرسي خشبي وسط الخشبة)

(أ) (بصوت متعب وهو ينظر إلى كف يديه):
هل عشت حقاً هنا، أم أنني كنت مجرد متفرج في صف الأمام؟

(ب) (يخرج صوته من مكبرات جانبية ببطء):
الخشبة لا تعترف بمن ولدوا سراً.. الذاكرة تبدأ حين ينطفئ آخر صف من الجمهور.

(أ) (ينهض فجأة):
إذن فليضيء العرض، ولتسقط الأقنعة!
      
---
مقترح فكرة درامية إضافية:
- فكرة عرض تجريبي يعتمد على تقزيم الزمن، حيث يعيش البطل صراع حياته كاملاً في دقات ساعة جدارية واحدة تنهار تدريجياً.''';
    } else if (section == 'تحليل نص مسرحي') {
      return 'تحليل عميق للنص ($query):\n- البناء المعماري للحدث يعتمد على الكسر المتتالي للزمن الدرامي.\n- الصراع الرئيسي: خارجي متمثل في قسوة السلطة، وداخلي متمثل في الوخز الأخلاقي للشخصية.';
    } else if (section == 'مساعد الممثل') {
      return 'توجيهات أداء شخصية ($query):\n- في لحظة ذروة الانفعال، اعتمد على الصمت الناطق قبل إطلاق الجملة الحوارية.\n- استخدم إيقاع التنفس السريع لإيصال حالة التوتر للمتفرج دون صراخ مبالغ فيه.';
    } else if (section == 'مساعد الإضاءة') {
      return 'رؤية سينوغرافية وإضاءة لـ ($query):\n- تدرج الألوان من العنبر الدافئ إلى الأزرق الفولاذي عند انقلاب الحدث.\n- إضاءة خلفية (Backlight) لعزل الشخصية عن الديكور وتأكيد عزلتها الدرامية.';
    } else {
      return 'بناءً على طرحك في قسم ($section) حول ($query):\nنقترح معالجة درامية ترتكز على إيقاع الحركة الم,سرحية وتوظيف الفضاء الفارغ لخلق دلالات بصرية عميقة.';
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

    Future.delayed(const Duration(milliseconds: 700), () {
      final botReply = _generateAdvancedResponse(_selectedSection, userMessage);
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
                          'text': 'تم الانتقال إلى قسم: $section. تفضل بطرح فكرتك أو طلبك الدرامي.'
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
                      hintText: 'اكتب طلبك أو اطلب كتابة مشهد مسرحي...',
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
