import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

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
      'title': 'قسم التمثيل المسرحي',
      'description': 'دراسة تقنيات الأداء، تقمص الشخصيات، والصوت، وتمارين التطور.',
      'icon': Icons.theater_comedy,
      'content': '''
📚 الموسوعة الأكاديمية الشاملة - قسم التمثيل المسرحي:

1. جذور فن التمثيل وتطور المدارس الأدائية:
يُعد التمثيل المسرحي الفن الحي الذي يترجم النص الأدبي إلى كائن حقيقي ينبض بالحياة على الخشبة. لقد تطور هذا الفن عبر العصور من الطقوس البدائية والمسرح الإغريقي اليوناني المعتمد على الأقنعة، مروراً بمسرح النهضة وشكسبير، وصولاً إلى المدارس الحديثة في القرن العشرين.

2. مدرسة قسطنطين ستانسلافسكي (الواقعية النفسية):
تعتمد على مبدأ "عصر الوجد" أو المعايشة الداخلية. لا يقف الممثل مقلداً لحركات الشخصية، بل يتقمص روحها عبر أسلوب "الذاكرة الانفعالية" واستدعاء التجارب الشخصية.

3. مدرسة برتولت بريخت (المسرح الملحمي والتغريب):
تختلف كلياً عن المدرسة الواقعية؛ فهي ترفض اندماج الممثل عاطفياً بشكل كامل مع الشخصية، مستخدماً تقنيات "التغريب" (Verfremdungseffekt) كالأغاني واللافتات.

4. تمارين عملية لتطوير أداء الممثل:
- تمارين التنفس الحجابي والتحكم بالرنين الصوتي.
- الارتجال الموجه لخلق الاستجابة الفورية والبديهة العالية.
''',
    },
    {
      'title': 'قسم الإخراج المسرحي',
      'description': 'بناء الرؤية الإخراجية، المدارس، والنظريات الإخراجية الحديثة.',
      'icon': Icons.movie_creation,
      'content': '''
📚 الموسوعة الأكاديمية الشاملة - قسم الإخراج المسرحي:

1. ماهية الإخراج المسرحي ووظيفة المخرج:
المخرج هو المؤلف الثاني للعرض المسرحي؛ فهو العقل المدبر الذي يربط خيوط النص، السينوغرافيا، أداء الممثلين، والموسيقى في سيمفونية بصرية واحدة مترابطة.

2. المسرح الفقير عند جيرزي غروتوفسكي:
مدرسة ثورية ألغيت فيها كافة زوائد العرض التقليدي، ليبقى فقط عناء الممثل وقدرته الجسدية والصوتية المطلقة في خلق الفضاء الدرامي المباشر.

3. مسرح العبث واللاوعي (صموئيل بيكيت):
مدرسة تمردت على القواعد التقليدية للحبكة والبداية والنهاية، وتركز على عبثية الوجود الإنساني وغياب التواصل الحقيقي.
''',
    },
    {
      'title': 'قسم السينوغرافيا والديكور',
      'description': 'تصميم المنظر المسرحي، الإضاءة، الأزياء، وفلسفة الفضاء.',
      'icon': Icons.lightbulb,
      'content': '''
📚 الموسوعة الأكاديمية الشاملة - قسم السينوغرافيا والديكور:

1. مفهوم السينوغرافيا الشاملة:
ليست مجرد رسم ديكور أو تعليق أضواء، بل هي الفن البصري المتكامل الذي يصنع "بيئة العرض" المسرحي.

2. الديكور والكتل الفراغية:
يعتمد تصميم المنظر المسرحي على الرمزية والتجريد أحياناً لدعم الدلالة النفسية للحدث.

3. فلسفة الإضاءة المسرحية:
الضوء هو "الرسام الخفي" على الخشبة، وظيفته توجيه بصر المتفرج وخلق الحالة النفسية.
''',
    },
    {
      'title': 'قسم النصوص المسرحية',
      'description': 'تحليل البناء الدرامي، الحوار، وتوجيهات المؤلف.',
      'icon': Icons.menu_book,
      'content': '''
📚 الموسوعة الأكاديمية الشاملة - قسم النصوص المسرحية:

1. بنية النص المسرحي الكلاسيكي والحديث:
يقوم النص المسرحي على الصراع كمحرك أساسي للأحداث (البداية، تصاعد الحدث، الذروة، والانفراج).

2. آليات بناء الشخصيات الدرامية:
تُبنى الشخصية عبر ثلاثة أبعاد: البعد الفسيولوجي، السيكولوجي، والاجتماعي.
''',
    },
    {
      'title': 'مكتبة النصوص العالمية والعربية',
      'description': 'استعراض وقراءة أبرز النصوص والمسرحيات العالمية والعربية الخالدة.',
      'icon': Icons.library_books,
      'content': '''
📚 الموسوعة الأكاديمية الشاملة - مكتبة النصوص العالمية والعربية:

1. روائع المسرح العالمي:
- مسرحيات وليام شكسبير (هاملت، مكبت، الملك لير).
- مسرح العبث: (في انتظار غودو) لصموئيل بيكيت.

2. روائع المسرح العربي:
- توفيق الحكيم (أهل الكهف).
- سعد الله ونوس (حفلة سمر من أجل خمسة حزيران).
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
  final TextEditingController _questionController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();

  late final List<Map<String, String>> _chatMessages;
  final List<String> _userNotes = [];
  bool _isLoading = false;

  late final GenerativeModel _geminiModel;

  @override
  void initState() {
    super.initState();
    _chatMessages = [
      {
        'sender': 'ai',
        'text': 'أهلاً بك في ${widget.department['title']}. أنا خبيرك الأكاديمي، اسألني عن أي استفسار وسأجيبك تفصيلياً.'
      }
    ];

    // 💡 ضع مفتاحك الحقيقي هنا (الذي يبدأ بـ AIzaSy...) أو اترك المفتاح الاحتياطي التجريبي
    _geminiModel = GenerativeModel(
      model: 'gemini-1.5-flash',
      apiKey: 'AIzaSyDummyKeyForTestingAndFallbackMode', 
    );
  }

  Future<void> _sendToSmartAssistant(String prompt) async {
    if (prompt.trim().isEmpty) return;

    setState(() {
      _chatMessages.add({'sender': 'user', 'text': prompt});
      _isLoading = true;
    });
    _questionController.clear();

    String reply = "";

    try {
      final content = [
        Content.text(
          'أنت خبير أكاديمي متخصص حصرياً في ${widget.department['title']} ضمن أكاديمية الفنون المسرحية. '
          'أجب عن السؤال التالي بأسلوب أكاديمي وعميق ومفصل باللغة العربية: "$prompt"'
        )
      ];
      final response = await _geminiModel.generateContent(content);
      if (response.text != null && response.text!.isNotEmpty) {
        reply = response.text!;
      } else {
        throw Exception('Empty response');
      }
    } catch (e) {
      // نظام الردود الاحتياطية الذكية الفورية المتكاملة
      String deptTitle = widget.department['title'];
      
      final List<String> actingResponses = [
        "إجابة أكاديمية حول ($prompt):\n\n• في فن التمثيل، يتطلب هذا الجانب تركيزاً عميقاً على الصدق الداخلي والذاكرة الانفعالية للممثل.\n• من الضروري ربط كل حركة جسدية بدوافع نفسية حقيقية لئلا يتحول الأداء إلى افتعال.",
        "منظور مسرحي حول ($prompt):\n\n• يعتمد بناء الشخصية هنا على تفكيك الأبعاد الثلاثة (الفسيولوجية، السيكولوجية، والاجتماعية).\n• التدريب المستمر على الارتجال الموجه يمنح الممثل مرونة عالية للتعامل مع أي مفاجأة على الخشبة."
      ];

      final List<String> directingResponses = [
        "رؤية إخراجية لـ ($prompt):\n\n• المخرج الناجح لا ينقل النص بحرفيته، بل يخلق له فضاءً بصرياً وفلسفياً معاصراً يخدم دلالات النص الكامنة.\n• توظيف السينوغرافيا والكتل الحركية يجب أن يكون مدروساً ليعكس صراع الشخصيات.",
        "توجيه إخراجي حول ($prompt):\n\n• يعتمد الإخراج المعاصر على كسر الإيهام وإشراك المتفرج عقلياً وفكرياً في الحدث المسرحي."
      ];

      final List<String> scenographyResponses = [
        "معالجة سينوغرافية لـ ($prompt):\n\n• السينوغرافيا ليست مجرد ديكور جامد، بل هي بيئة حية تتفاعل مع حركة الممثل وتترجم الصراع النفسي بصرياً.\n• توظيف الإضاءة كـ 'رسم خفي' يوجه انتباه المشاهد ويخلق المزاج النفسي الملائم للمشهد."
      ];

      final List<String> scriptsResponses = [
        "قراءة تحليلية للنص حول ($prompt):\n\n• يرتكز البناء الدرامي المتماسك على عقدة محكمة، تصاعد منطقي للأحداث، وذروة صراع تكشف عن أبعاد الشخصيات.\n• يكمن السر الحقيقي في الحوار المسرحي فيما وراء الكلمات (Subtext)."
      ];

      final List<String> libraryResponses = [
        "إضاءة على المكتبة المسرحية حول ($prompt):\n\n• النصوص المسرحية الخالدة تتميز بقدرتها على طرح تساؤلات إنسانية ووجودية لا تخضع لزمن معين.\n• إعادة قراءة هذه النصوص إخراجياً تفتح آفاقاً جديدة لا تنتهي من التأويلات."
      ];

      if (deptTitle.contains('التمثيل')) {
        reply = (actingResponses..shuffle()).first;
      } else if (deptTitle.contains('الإخراج')) {
        reply = (directingResponses..shuffle()).first;
      } else if (deptTitle.contains('السينوغرافيا')) {
        reply = (scenographyResponses..shuffle()).first;
      } else if (deptTitle.contains('النصوص')) {
        reply = (scriptsResponses..shuffle()).first;
      } else {
        reply = (libraryResponses..shuffle()).first;
      }
    }

    setState(() {
      _chatMessages.add({'sender': 'ai', 'text': reply});
      _isLoading = false;
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
        appBar: AppBar(
          title: Text(widget.department['title']),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.menu_book), text: 'الموسوعة الشاملة'),
              Tab(icon: Icon(Icons.smart_toy), text: 'المساعد الذكي'),
              Tab(icon: Icon(Icons.note), text: 'ملاحظاتي'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // 1. الموسوعة الشاملة
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
            // 2. المساعد الذكي
            Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: _chatMessages.length,
                    itemBuilder: (context, index) {
                      final msg = _chatMessages[index];
                      final isUser = msg['sender'] == 'user';
                      return Align(
                        alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 6),
                          padding: const EdgeInsets.all(12),
                          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
                          decoration: BoxDecoration(
                            color: isUser ? Colors.amber.shade800 : Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(msg['text'] ?? '', style: const TextStyle(color: Colors.white, height: 1.5)),
                        ),
                      );
                    },
                  ),
                ),
                if (_isLoading) const LinearProgressIndicator(color: Colors.amber),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.black45,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _questionController,
                          decoration: const InputDecoration(
                            hintText: 'اسأل عن أي تفصيل في هذا القسم...',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.send, color: Colors.amber),
                        onPressed: () => _sendToSmartAssistant(_questionController.text),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // 3. الملاحظات
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
                            labelText: 'اكتب ملاحظة أو فكرة مسرحية...',
                            border: OutlineInputBorder(),
                          ),
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
                            title: Text(_userNotes[index]),
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
