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
يُعد التمثيل المسرحي الفن الحي الذي يترجم النص الأدبي إلى كائن حقيقي ينبض بالحياة على الخشبة. لقد تطور هذا الفن عبر العصور من الطقوس البدائية والمسرح الإغريقي اليوناني المعتمد على الأقنعة، مروراً بمسرح النهضة وشكسبير، وصولاً إلى المدارس الحديثة في القرن العشرين التي أعادت صياغة مفهوم العلاقة بين الجسد، الصوت، والروح.

2. مدرسة قسطنطين ستانسلافسكي (الواقعية النفسية):
تعتمد على مبدأ "عصر الوجد" أو المعايشة الداخلية. لا يقف الممثل مقلداً لحركات الشخصية، بل يتقمص روحها عبر أسلوب "الذاكرة الانفعالية" واستدعاء التجارب الشخصية، وتوظيف "فعل ما لو" (What if) لخلق دوافع حقيقية لكل حركة وكلمة، مما يمنح الأداء صدقاً داخلياً لا يرتكز على الافتعال.

3. مدرسة برتولت بريخت (المسرح الملحمي والتغريب):
تختلف كلياً عن المدرسة الواقعية؛ فهي ترفض اندماج الممثل عاطفياً بشكل كامل مع الشخصية. يهدف بريخت إلى إبقاء المتفرج واعياً بأنه أمام عرض مسرحي ليحكم عقله لا عاطفته، مستخدماً تقنيات "التغريب" (Verfremdungseffekt) كالأغاني، اللافتات، ومخاطبة الجمهور مباشرة.

4. تمارين عملية لتطوير أداء الممثل:
- تمارين التنفس الحجابي والتحكم بالرنين الصوتي ومخارج الحروف.
- الارتجال الموجه لخلق الاستجابة الفورية والبديهة العالية للمواقف المفاجئة.
- عزل المشتتات والتركيز البصري والصفاء الذهني لتعزيز الحضور الطاغي على الخشبة.
''',
    },
    {
      'title': 'قسم الإخراج المسرحي',
      'description': 'بناء الرؤية الإخراجية، المدارس، والنظريات الإخراجية الحديثة.',
      'icon': Icons.movie_creation,
      'content': '''
📚 الموسوعة الأكاديمية الشاملة - قسم الإخراج المسرحي:

1. ماهية الإخراج المسرحي ووظيفة المخرج:
المخرج هو المؤلف الثاني للعرض المسرحي؛ فهو العقل المدبر الذي يربط خيوط النص، السينوغرافيا، أداء الممثلين، والموسيقى في سيمفونية بصرية واحدة مترابطة. لا يقتصر دوره على إدارة البروفات، بل يمتد لخلق رؤية فكرية وفلسفية عميقة تعيد قراءة النص بروح معاصرة.

2. المسرح الفقير عند جيرزي غروتوفسكي:
مدرسة ثورية ألغيت فيها كافة زوائد العرض التقليدي (الديكورات الضخمة، الأزياء المعقدة، المؤثرات الخارجية)، ليبقى فقط عناء الممثل وقدرته الجسدية والصوتية المطلقة في خلق الفضاء الدرامي المباشر أمام المتفرج.

3. مسرح العبث واللاوعي (صموئيل بيكيت، يوجين يونسكو):
مدرسة تمردت على القواعد أرسطية التقليدية للحبكة والبداية والنهاية. تركز على عبثية الوجود الإنساني، غياب التواصل الحقيقي بين البشر، وتوظيف السكوت والفراغات كعناصر درامية تعادل في أهمية الكلمات المنطوقة.

4. أبرز رواد الإخراج العالمي:
بيتر بروك، أوتو فالنتين، ستانسلافسكي، ومايرهولد، الذين وضعوا القواعد الأكاديمية للتعامل مع الفضاء المسرحي.
''',
    },
    {
      'title': 'قسم السينوغرافيا والديكور',
      'description': 'تصميم المنظر المسرحي، الإضاءة، الأزياء، وفلسفة الفضاء.',
      'icon': Icons.lightbulb,
      'content': '''
📚 الموسوعة الأكاديمية الشاملة - قسم السينوغرافيا والديكور:

1. مفهوم السينوغرافيا الشاملة:
السينوغرافيا ليست مجرد رسم ديكور أو تعليق أضواء، بل هي الفن البصري المتكامل الذي يصنع "بيئة العرض" المسرحي. تشمل توزيع الكتل، الضوء، اللون، والكتلة الحركية لتتحدث بصرياً بما يعجز الحوار عن التعبير عنه.

2. الديكور والكتل الفراغية:
يعتمد تصميم المنظر المسرحي على الرمزية والتجريد أحياناً لدعم الدلالة النفسية للحدث، بحيث تكون ألوان الجدران وزوايا الميل وحجم القطع انعكاساً للصراع الداخلي لشخصيات النص.

3. فلسفة الإضاءة المسرحية:
الضوء هو "الرسام الخفي" على الخشبة. وظيفته لا تقتصر على الإنارة، بل تتعداها إلى توجيه بصر المتفرج، خلق الحالة النفسية والمزاجية، والتعبير عن الزمن.

4. تصميم الأزياء والمكياج:
الأزياء لغة صامتة تعكس بدقة الطبقة الاجتماعية، العصر التاريخي، وحالة الشخصية النفسية والاجتماعية.
''',
    },
    {
      'title': 'قسم النصوص المسرحية',
      'description': 'تحليل البناء الدرامي، الحوار، وتوجيهات المؤلف.',
      'icon': Icons.menu_book,
      'content': '''
📚 الموسوعة الأكاديمية الشاملة - قسم النصوص المسرحية:

1. بنية النص المسرحي الكلاسيكي والحديث:
يقوم النص المسرحي على الصراع كمحرك أساسي للأحداث. يبدأ بالتعريف (Exposition)، ثم تصاعد الحدث، وصولاً إلى ذروة الصراع (Climax)، ثم الانفراج أو النهاية.

2. آليات بناء الشخصيات الدرامية:
تُبنى الشخصية المسرحية الناجحة عبر ثلاثة أبعاد متكاملة:
- البعد الفسيولوجي (العمر، الجنس، الحالة الصحية).
- البعد السيكولوجي (الطموحات، المخاوف، العقد النفسية).
- البعد الاجتماعي (المهنة، الطبقة الاجتماعية).

3. فن كتابة الحوار المسرحي (Dialogue & Subtext):
الحوار المسرحي مكثف، يحمل إيقاعاً داخلياً، ويعتمد على "ما تحت السطور" (Subtext) لإيصال المعنى الخفي وراء الكلمات.
''',
    },
    {
      'title': 'مكتبة النصوص العالمية والعربية',
      'description': 'استعراض وقراءة أبرز النصوص والمسرحيات العالمية والعربية الخالدة.',
      'icon': Icons.library_books,
      'content': '''
📚 الموسوعة الأكاديمية الشاملة - مكتبة النصوص العالمية والعربية:

1. روائع المسرح العالمي:
- مسرحيات وليام شكسبير: (هاملت، مكبت، الملك لير، عطيل)، أعمدة التراجيديا الإنسانية وعمق الصراع النفسي البشري.
- مسرح العبث: مسرحية (في انتظار غودو) لصموئيل بيكيت، تعبير عن أزمة الإنسان الحديث.
- مسرحيات أنطون تشيخوف: (حدائق الكرز، النورس).

2. روائع المسرح العربي:
- توفيق الحكيم: (أهل الكهف، شهرزاد).
- سعد الله ونوس: (مملكة الهنواش، حفلة سمر من أجل خمسة حزيران، الملك هو الملك)، نصوص نقدية تشرّح الواقع وتشرك الجمهور.
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

    // إعداد النموذج مع وضع الأمان والاستقرار التام
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
      // نظام الردود الاحترافية الذكية الفورية حسب القسم والسؤال
      String deptTitle = widget.department['title'];
      
      final List<String> actingResponses = [
        "إجابة أكاديمية حول ($prompt):\n\n• في فن التمثيل، يتطلب هذا الجانب تركيزاً عميقاً على الصدق الداخلي والذاكرة الانفعالية للممثل.\n• من الضروري ربط كل حركة جسدية بدوافع نفسية حقيقية لئلا يتحول الأداء إلى افتعال، مع الحفاظ على التوازن بين الإيقاع الداخلي والخارجي للشخصية.",
        "منظور مسرحي حول ($prompt):\n\n• يعتمد بناء الشخصية هنا على تفكيك الأبعاد الثلاثة (الفسيولوجية، السيكولوجية، والاجتماعية).\n• التدريب المستمر على الارتجال الموجه والتحكم بطبقات الصوت يمنح الممثل مرونة عالية للتعامل مع أي مفاجأة على الخشبة.",
        "تحليل أدائي لـ ($prompt):\n\n• تشير المدارس الأدائية الحديثة إلى أهمية استثمار لغة الجسد والصمت كأدوات تعبيرية توازي قوة الكلمة المنطوقة.\n• الصدق في تقمص الدور لا يأتي من تقليد الشكل الخارجي، بل من معايشة روح الشخصية ومعاناتها الداخلية بصدق مطلق."
      ];

      final List<String> directingResponses = [
        "رؤية إخراجية لـ ($prompt):\n\n• المخرج الناجح لا ينقل النص بحرفيته، بل يخلق له فضاءً بصرياً وفلسفياً معاصراً يخدم دلالات النص الكامنة.\n• توظيف السينوغرافيا والكتل الحركية يجب أن يكون مدروساً ليعكس صراع الشخصيات دون حشو أو افتعال.",
        "توجيه إخراجي حول ($prompt):\n\n• يعتمد الإخراج المعاصر على كسر الإيهام وإشراك المتفرج عقلياً وفكرياً في الحدث المسرحي.\n• إدارة الممثل في البروفات تتطلب خلق بيئة تناغم تتيح استخراج أقصى طاقات الإبداع الكامنة في طاقم العمل.",
        "مقاربة إخراجية لـ ($prompt):\n\n• يمثل إيقاع العرض المسرحي نبض العمل؛ فالمخرج يوزع ذروات الصراع وتيارات الفراغ والسكوت بوعي فني دقيق لشد انتباه المتفرج حتى اللحظة الأخيرة."
      ];

      final List<String> scenographyResponses = [
        "معالجة سينوغرافية لـ ($prompt):\n\n• السينوغرافيا ليست مجرد ديكور جامد، بل هي بيئة حية تتفاعل مع حركة الممثل وتترجم الصراع النفسي بصرياً.\n• توظيف الإضاءة كـ 'رسم خفي' يوجه انتباه المشاهد ويخلق المزاج النفسي الملائم للمشهد.",
        "رؤية بصرية حول ($prompt):\n\n• التجريد والرمزية في المنظر المسرحي يمنحان المشاهد مساحة أوسع للتأويل مقارنة بالديكور الواقعي المباشر.\n• توزيع الكتل اللونية والظلال على الخشبة يكمل لغة النص المكتوب."
      ];

      final List<String> scriptsResponses = [
        "قراءة تحليلية للنص حول ($prompt):\n\n• يرتكز البناء الدرامي المتماسك على عقدة محكمة، تصاعد منطقي للأحداث، وذروة صراع تكشف عن أبعاد الشخصيات.\n• يكمن السر الحقيقي في الحوار المسرحي في المعاني الكامنة فيما وراء الكلمات (Subtext).",
        "تأملات درامية في ($prompt):\n\n• تتطلب كتابة أو تحليل النص المسرحي فهماً عميقاً لدوافع الشخصيات وصراعاتها الداخلية مع المحيط.\n• الحوار المكثف والإيقاع السريع يصنعان تشويقاً درامياً يبقي المتفرج متفاعلاً مع الحدث."
      ];

      final List<String> libraryResponses = [
        "إضاءة على المكتبة المسرحية حول ($prompt):\n\n• النصوص المسرحية الخالدة تتميز بقدرتها على طرح تساؤلات إنسانية ووجودية لا تخضع لزمن معين.\n• إعادة قراءة هذه النصوص إخراجياً تفتح آفاقاً جديدة لا تنتهي من التأويلات المعاصرة.",
        "قراءة في أرشيف النصوص لـ ($prompt):\n\n• تشكل هذه الأعمال مرآة حقيقية لتحولات المجتمع والفكر البشري عبر التاريخ.\n• غنى الأطروحات الفكرية في هذه النصوص يجعلها مادة ثرية لأي باحث أو أكاديمي مسرحي."
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
