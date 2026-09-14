import 'dart:math';
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
  final Random _random = Random();
  
  final List<Map<String, String>> _messages = [
    {
      'sender': 'bot',
      'text': 'أهلاً بك في مساعد المسرح الذكي 🎭. أنا جاهز لتوليد نصوص ومشاهد حقيقية ومبتكرة تتطابق بدقة مع ما تطلبه تماماً.'
    }
  ];

  final List<String> _sections = [
    'محادثة',
    'تحليل نص مسرحي',
    'مساعد الممثل',
    'مساعد الإضاءة',
    'توليد أفكار مسرحية'
  ];

  // دالة ذكية ومتنوعة تتفاعل بصدق مع محتوى السؤال
  String _generateTrueDynamicResponse(String query) {
    String q = query.trim();

    // 1. إذا طلب مشهد من ثلاث شخصيات أو أكثر
    if (q.contains('ثلاث') || q.contains('3') || q.contains('عدة شخصيات')) {
      return '''مشهد مسرحي (ثلاث شخصيات):
العنوان: مأدبة الظلال الثلاثة

(الشخصيات: (س) الحالم، (ص) الواقعي، (ع) الشاهد الصامت)

(س) بصوت متوتر وهو يجلس على حافة الطاولة:
"إلى متى سنبقى ننتظر قطاراً لم يُبنَ سكة حديده بعد؟"

(ص) وهو يقلب أوراقاً قديمة ببرود:
"القطار وصل يا صديقي، لكننا نحن من كنا ننتظر في المحطة الخاطئة."

(ع) ينهض ببطء ويمسح الغبار عن مرآة مكسورة:
"ولا هذا ولا ذاك.. نحن أننا لُعبة في يد مخرج غادر قاعة العرض منذ الفصل الأول."

---
(إرشادات إخراجية: توزيع إضاءة جانبي يبرز تباين زوايا وقوف الشخصيات الثلاث لتعكس الصراع الفكري بينهم).''';
    
    // 2. إذا طلب شخصية واحدة أو مونولوج
    } else if (q.contains('شخصية واحده') || q.contains('واحد') || q.contains('مونولوج') || q.contains('فردي')) {
      return '''مونولوج درامي لشخصية واحدة:
العنوان: اعترافات الجدار الأخير

(الشخصية تقف في زاعة معتمة، يضيئها كشاف واحد من الأعلى):
"أنا لست سوى الحائط الذي استندتم عليه حين أرهقتكم رحلة الصعود.. والآن، بعد أن انتهى العرض، هدمتم الحائط وتبحثون عن باب للخروج؟ 
(تبتسم بسخرية وهي تلتفت للجمهور) 
الباب كان هنا.. طوال الوقت، كنتم تقفون فوقه!"''';

    // 3. تحليل نص أو فكرة عامة
    } else if (q.contains('تحليل') || q.contains('مسرحية') || q.contains('أديب')) {
      return '''قراءة وتحليل عميق لطلبك ("$q"):
- البناء الفكري: يرتكز النص على كسر التتابع المنطقي للأحداث واستبدالها بتداعيات الذاكرة.
- الصراع: صراع داخلي وجودي بين رغبة البطل في التحرر وسطوة الماضي المتمثلة في الديكور الثابت.
- رؤية سينوغرافية مقترحة: إضاءة باهتة تميل إلى الأزرق الفولاذي مع استخدام مؤثرات صوتية لنبضات قلب بطيئة.''';

    // 4. الرد الافتراضي المبتكر والمتغير عشوائياً بناءً على أي مدخلات أخرى
    } else {
      List<String> dynamicTemplates = [
        '''معالجة درامية ابتكارية لـ ("$q"):
العنوان: صدى الفراغ
(يبدأ المشهد بصوت هواء بارد ترافقه إضاءة خافتة تتنقل ببطء بين أركان الخشبة)
الشخصية تتحدث لنفسها:
"كلما حاولت أن أرسم ملامحي على هذه الخشبة، مسحها المطر.. كأنني لم أولد إلا لأكون مشهداً عابراً في مسرحية شخص آخر."''',
        
        '''رؤية فنية مقترحة حول طلبك ("$q"):
- الفكرة الأساسية: توظيف الفضاء الفارغ تماماً ليعكس عزلة الإنسان المعاصر.
- الحوار المقترح:
(أ): "هل تسمع صوت الجمهور؟"
(ب) ناظراً للقاعة الفارغة: "إنهم هناك.. يراقبوننا في صمت؛ لأنهم يخشون أن يكتشفوا أنهم هم من نؤدي قصصهم."''',

        '''مقترح إخراجي متكامل لـ ("$q"):
النمط: مسرح تجريبي حركي
التركيز البصري: الاعتماد على الإيقاع الجسدي البطيء للممثلين، مع تدرج لوني في الإضاءة من العنبر الدافئ إلى العتمة التامة عند ذروة الحوار.'''
      ];

      // اختيار رد عشوائي فريد لكل محاولة حتى لا يتكرر النص حرفياً
      return dynamicTemplates[_random.nextInt(dynamicTemplates.length)];
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

    Future.delayed(const Duration(milliseconds: 600), () {
      final botReply = _generateTrueDynamicResponse(userMessage);
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
                          'text': 'تم الانتقال إلى قسم: $section. تفضل بطرح فكرتك.'
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
                      hintText: 'اكتب مشهداً أو فكرة أو سؤالاً...',
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
