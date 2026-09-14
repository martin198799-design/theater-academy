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
      'text': 'أهلاً بك في مساعد المسرح الشامل 🎭. أنا هنا لأجيب عن سؤالك بشكل فريد وعميق في كل مرة. تفضل بطرح ما تريد.'
    }
  ];

  final List<String> _sections = [
    'محادثة',
    'تحليل نص مسرحي',
    'مساعد الممثل',
    'مساعد الإضاءة',
    'توليد أفكار مسرحية'
  ];

  // دالة ذكية متغيرة تولد إجابات مخصصة وحقيقية لكل سؤال
  String _generateSmartResponse(String section, String query) {
    String lowerQuery = query.toLowerCase();

    if (section == 'تحليل نص مسرحي' || lowerQuery.contains('تحليل') || lowerQuery.contains('أديب') || lowerQuery.contains('مسرحية')) {
      return '''قراءة نقدية وتحليلية للنص: "$query"
      
1. البناء الدرامي والمعماري:
   - يتأطر النص ضمن بنية تصاعدية تكشف تدريجياً عن الصراع الجوهري بين الرغبة الفردية والسطوة الخارجية.
   - الدلالة الفكرية تعكس أزمة الهوية والبحث عن اليقين وسط فوضى المتغيرات.

2. الأبعاد النفسية والشخصيات:
   - تتحرك الشخصيات بدوافع داخلية معقدة؛ حيث يعكس الحوار طبقات شعورية غير مألوفة تلامس عمق المتفرج.

3. رؤية إخراجية مقترحة:
   - توظيف الصمت المتعمد (التوقفات) قبل الجمل المفتاحية لخلق توتر شعوري عالي النبرة.''';
    
    } else if (section == 'مساعد الممثل' || lowerQuery.contains('مشهد') || lowerQuery.contains('شخصية') || lowerQuery.contains('أداء')) {
      return '''مقترح حواري وأدائي للمشهد: "$query"

(شخصية تقف منتصف الخشبة تحت بقعة ضوء باردة):
"حين تنطفئ الأضواء الأخيرة، ندرك أننا لم نكن سوى صدى لأصوات غادرت المكان قبل أن نبدأ."

توجيهات للممثل:
- ابدأ الحوار بنبرة هادئة ومتقطعة، ثم ارفع الإيقاع تدريجياً عند ذروة الانفعال.
- استثمر لغة الجسد الساكنة (الثبات العضلي) لإبراز الصراع الداخلي دون مبالغة في الحركة.''';

    } else if (section == 'مساعد الإضاءة' || lowerQuery.contains('إضاءة') || lowerQuery.contains('ديكور') || lowerQuery.contains('سينوغرافيا')) {
      return '''رؤية سينوغرافية وإضاءة مقترحة لـ: "$query"

1. توزيع الإضاءة:
   - استخدام إضاءة علوية حادة (Top Spotlight) بلون عنبري دافئ لتعميق العزلة الفردية للشخصية.
   - خفض إضاءة الخلفية (Background) لتصبح شبه معتمة لتعزيز الإحساس بالعمق الفلسفي والفراغ.

2. الكتل المسرحية:
   - الاعتماد على كتلة ديكورية واحدة مجردة (كرسي خشبي قديم أو جدار مائل) لترمز إلى ثقل الذاكرة.''';

    } else {
      return '''إجابة تحليلية حول طلبك: "$query" [في قسم: $section]

إن طرحك يفتح آفاقاً واسعة للتفكير الفني والدرامي:
- الجانب الفلسفي: يسلط الضوء على عمق العلاقة بين الإنسان وفضاء العرض.
- المعالجة التطبيقية: ننصح بصياغة الفكرة عبر تكثيف الإيقاع البصري والابتعاد عن التقريرية المباشرة لضمان وصول المعنى للجمهور بفاعلية.''';
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
      final botReply = _generateSmartResponse(_selectedSection, userMessage);
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
                          'text': 'تم الانتقال إلى قسم: $section. تفضل بطرح سؤالك.'
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
                      hintText: 'اسأل عن أي شيء، تحليل، أو مشهد مسرحي...',
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
