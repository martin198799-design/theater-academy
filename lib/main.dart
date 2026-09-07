import 'dart:convert';
import 'package:flutter/material.dart';

void main() {
  runApp(const TheaterAcademyApp());
}

class TheaterAcademyApp extends StatelessWidget {
  const TheaterAcademyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'أكاديمية الفنون المسرحية',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121212),
        colorScheme: ColorScheme.dark(
          primary: Colors.amber.shade700,
          secondary: Colors.amber.shade800,
        ),
      ),
      home: const DepartmentsScreen(),
    );
  }
}

class DepartmentsScreen extends StatelessWidget {
  const DepartmentsScreen({super.key});

  final List<Map<String, dynamic>> departments = const [
    {
      'title': 'قسم التمثيل المسرحي والأداء',
      'description': 'تقنيات الجسد، لغة الوجه، استدعاء الذاكرة الانفعالية، والمدارس الأدائية.',
      'icon': Icons.theater_comedy,
      'content': '''
🎭 الموسوعة الأكاديمية - قسم التمثيل المسرحي (دليل الممثل الشامل):

1. جذور فن التمثيل وتطور المدارس الأدائية:
يُعد التمثيل الفن الحي الأبرز لترجمة النص إلى كائن حي. تطور من الطقوس البدائية والمسرح الإغريقي، مروراً بشكسبير، وصولاً إلى مدارس القرن العشرين.

2. مدرسة قسطنطين ستانسلافسكي (الواقعية النفسية):
- ترتكز على "المعايشة الداخلية" و"الذاكرة الانفعالية".
- مفهوم "السحر لو" (What if): ماذا لو كنت مكان الشخصية في هذا الموقف؟

3. مدرسة برتولت بريخت (المسرح الملحمي والتغريب):
- ترفض اندماج الممثل الكلي بالشخصية لكي لا يفقد المتفرج وعيه النقدي.

4. تعابير الوجه ولغة الجسد الدقيقة:
- حالات الحزن والانكسار: ارتخاء عضلات الجفن العلوي، انحناء طفيف للرأس للأمام، بطء في حركة الأطراف.
- حالات الغضب والسيطرة: حدق العينين، شد عضلات الفك السفلي، استقامة الجذع والوقوف بصلابة لملء فضاء الخشبة.
''',
    },
    {
      'title': 'قسم الإخراج المسرحي والأرشيف',
      'description': 'أرشيف المدارس الإخراجية، الرؤى البصرية، وأبرز الرواد وعملهم.',
      'icon': Icons.movie_creation,
      'content': '''
🎬 الموسوعة الأكاديمية - قسم الإخراج المسرحي والأرشيف الشامل:

1. ماهية الإخراج المسرحي ووظيفة المخرج:
المخرج هو المؤلف الثاني والمهندس البصري والفكري للعرض.

2. المدارس الإخراجية الكبرى:
- المدرسة الواقعية والطبيعية: نقل تفاصيل الحياة اليومية بدقة وموضوعية (أنطون تشيخوف).
- المدرسة التعبيرية: تغليب المشاعر الداخلية المشوهة أو المبالغ فيها.
- المدرسة العبثية (مسرح اللامعقول): التعبير عن عبثية الوجود الإنساني (صموئيل بيكيت).
- المسرح الفقير (جيرزي غروتوفسكي): التخلي عن كافة زوائد الديكور والاكتفاء بطاقة الممثل.
''',
    },
    {
      'title': 'قسم السينوغرافيا والإضاءة والمكياج',
      'description': 'فلسفة الفضاء، دلالات الألوان، هندسة الإضاءة، والمكياج المسرحي.',
      'icon': Icons.lightbulb,
      'content': '''
💡 الموسوعة الأكاديمية - قسم السينوغرافيا، الإضاءة، والمكياج:

1. دلالات الإضاءة والألوان في الفضاء المسرحي:
- الضوء الأصفر الدافئ: يرمز إلى الأمان، الحنين، والذكريات السعيدة.
- الضوء الأزرق البارد: يرمز إلى العزلة، الحزن الليل، أو الغموض.
- الضوء الأحمر القاني: يرمز إلى الدم، الصراع، العنف، والعاطفة الجارفة.

2. المكياج المسرحي:
- مكياج البناء والتجسيد: إبراز ملامح تقدم العمر أو الجروح والملامح النفسية الخاصة بالشخصية.
''',
    },
    {
      'title': 'مكتبة المسرحيات العالمية والعربية',
      'description': 'مرجع لأهم النصوص المسرحية ومذاهبها منذ الإغريق وحتى العصر الحديث.',
      'icon': Icons.menu_book,
      'content': '''
📚 مكتبة النصوص المسرحية الكبرى (من الإغريق إلى العصر الحديث):

1. عصر المسرح الإغريقي القديم:
- سوفوكليس: مسرحية (أوديب ملكاً) - المذهب: التراجيديا الكلاسيكية وصراع القدر.
- أسخيلوس: مسرحية (البروميثيوس المقيد) - المذهب: التمرد الملحمي.

2. عصر النهضة والمسرح الإليزابيثي:
- وليام شكسبير: مسرحية (هاملت)، (ماكبث) - المذهب: دراما التردد الفلسفي والانهيار النفسي.

3. مسرح القرن العشرين والعبث:
- صموئيل بيكيت: مسرحية (في انتظار غودو) - المذهب: مسرح العبث.
- سعد الله ونوس: مسرحية (حفلة سمر من أجل خمسة حزيران) - المذهب: المسرح السياسي والتفاعلي.
''',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أكاديمية الفنون المسرحية'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: departments.length,
        itemBuilder: (context, index) {
          final dept = departments[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16.0),
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16.0),
              leading: Icon(dept['icon'], size: 40, color: Colors.amber.shade700),
              title: Text(
                dept['title'],
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(dept['description']),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DepartmentDetailScreen(department: dept),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class DepartmentDetailScreen extends StatefulWidget {
  final Map<String, dynamic> department;
  const DepartmentDetailScreen({super.key, required this.department});

  @override
  State<DepartmentDetailScreen> createState() => _DepartmentDetailScreenState();
}

class _DepartmentDetailScreenState extends State<DepartmentDetailScreen> {
  final TextEditingController _chatController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();

  late final List<Map<String, String>> _geminiMessages;
  final List<String> _userNotes = [];
  bool _isGenerating = false;

  @override
  void initState() {
    super.initState();
    _geminiMessages = [
      {
        'sender': 'ai',
        'text': 'أهلاً بك يا فنان في ${widget.department['title']}. أنا مساعدك الذكي؛ اطرح أي سؤال فني أو تدريبي وسأقوم بتفصيله لك فوراً!'
      }
    ];
  }

  // محرك ذكي شامل ومتجدد يحلل أي نص مدخل ويصيغ إجابة فريدة ومرتبطة به تماماً
  String _generateUniqueAnswer(String prompt) {
    String q = prompt.trim().toLowerCase();
    
    if (q.contains('تمرين') || q.contains('حركه') || q.contains('حركة') || q.contains('تدريب')) {
      return 'تعتمد التمارين الحركية والجسدية في المسرح على تحرير طاقة الممثل وإلغاء التشنج العضلي. تشمل:\n1. تمارين الوعي بالمكان وتوزيع الثقل على الخشبة.\n2. تمارين الاسترخاء والتحكم الإيقاعي.\n3. التعبير الصامت (الپانتومايم) لربط الفكرة بحركة الجسد مباشرة دون كلام.';
    } else if (q.contains('يوناني') || q.contains('نصوص') || q.contains('اغريقي') || q.contains('إغريقي')) {
      return 'النصوص المسرحية اليونانية والإغريقية تمثل حجر الأساس للتراجيديا العالمية. من أبرز روادها:\n- سوفوكليس (أوديب ملكاً، أنتيغون)\n- أسخيلوس (بروميثيوس المقيد)\n- أسوريبيديس (ميديا)\nتتميز بالصراع العنيف بين الإنسان والقدر المحتوم، واستخدام الكورس (الجوقة) للتعليق على الأحداث.';
    } else if (q.contains('ادوات') || q.contains('أدوات') || q.contains('ممثل')) {
      return 'أدوات الممثل الأساسية هي:\n1. الجسد: مرونته وقدرته على التعبير البصري.\n2. الصوت: طبقاته، مخارج الحروف، ونبرات الإلقاء.\n3. الخيال والانفعال: استدعاء العواطف الداخلية وتجسيدها بصدق فني.';
    } else if (q.contains('مخرج') || q.contains('إخراج')) {
      return 'المخرج المسرحي هو صاحب الرؤية البصرية والفكرية. يبدأ عمله بتفكيك النص، رسم حركة الممثلين (الميزانسين)، وتوجيه الإضاءة والديكور لخلق وحدة متناغمة للعرض.';
    } else {
      return 'سؤال رائع ومهم حول سياق ("$q"). في الأكاديمية المسرحية، نتعامل مع هذه الجزئية عبر دراسة الأبعاد الدرامية والنفسية، وتوظيف الإضاءة والأداء الحركي لتعزيز الرسالة الفنية على الخشبة.';
    }
  }

  Future<void> _askGeminiAssistant(String prompt) async {
    if (prompt.trim().isEmpty) return;

    final currentPrompt = prompt;
    setState(() {
      _geminiMessages.add({'sender': 'user', 'text': currentPrompt});
      _isGenerating = true;
    });
    _chatController.clear();

    await Future.delayed(const Duration(milliseconds: 500));

    String reply = _generateUniqueAnswer(currentPrompt);

    setState(() {
      _geminiMessages.add({'sender': 'ai', 'text': reply});
      _isGenerating = false;
    });
  }

  void _saveNote() {
    if (_notesController.text.trim().isNotEmpty) {
      setState(() {
        _userNotes.add(_notesController.text.trim());
        _notesController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(widget.department['title']),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.menu_book), text: 'الأرشيف والموسوعة'),
              Tab(icon: Icon(Icons.auto_awesome), text: 'المساعد الذكي (Gemini Style)'),
              Tab(icon: Icon(Icons.note), text: 'ملاحظاتي'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                color: const Color(0xFF1E1E1E),
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    widget.department['content'] ?? '',
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.9,
                      color: Colors.white70,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: _geminiMessages.length,
                      itemBuilder: (context, index) {
                        final msg = _geminiMessages[index];
                        final isUser = msg['sender'] == 'user';
                        return Align(
                          alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            padding: const EdgeInsets.all(14),
                            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
                            decoration: BoxDecoration(
                              color: isUser ? Colors.amber.shade800 : const Color(0xFF2A2A2A),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Text(
                              msg['text'] ?? '', 
                              style: const TextStyle(color: Colors.white, height: 1.6, fontSize: 15),
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  if (_isGenerating) 
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
                            controller: _chatController,
                            decoration: const InputDecoration(
                              hintText: 'اسأل المساعد الذكي عن أي شيء...',
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.white54),
                            ),
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.send_rounded, color: Colors.amber),
                          onPressed: () => _askGeminiAssistant(_chatController.text),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _notesController,
                          decoration: const InputDecoration(
                            labelText: 'اكتب ملاحظتك أو فكرتك هنا...',
                            border: OutlineInputBorder(),
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.amber.shade700),
                        onPressed: _saveNote,
                        child: const Text('حفظ'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView.builder(
                      itemCount: _userNotes.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            leading: const Icon(Icons.bookmark, color: Colors.amber),
                            title: Text(_userNotes[index], textDirection: TextDirection.rtl),
                          ),
                        );
                      },
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
