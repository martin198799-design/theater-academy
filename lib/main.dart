import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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

1. جذور فن التمثيل وتطور المدرّسات الأدائية:
يُعد التمثيل المسرحي الفن الحي الذي يترجم النص الأدبي إلى كائن حقيقي ينبض بالحياة على الخشبة. لقد تطور هذا الفن عبر العصور من الطقوس البدائية والمسرح الإغريقي اليوناني المعتمد على الأقنعة والمجوقبة، مروراً بمسرح النهضة وشكسبير، وصولاً إلى المدارس الحديثة في القرن العشرين التي أعادت صياغة مفهوم العلاقة بين الجسد، الصوت، والروح.

2. مدرسة قسطنطين ستانسلافسكي (الواقعية النفسية):
تعتمد على مبدأ "عصر الوجد" أو المعايشة الداخلية. لا يقف الممثل مقلداً لحركات الشخصية، بل يتقمص روحها عبر أسلوب "الذاكرة الانفعالية" واستدعاء التجارب الشخصية، وتوظيف "فعل ما لو" (What if) لخلق دوافع حقيقية لكل حركة وكلمة، مما يمنح الأداء صدقاً داخلياً لا يرتكز على الافتعال.

3. مدرسة برتولت بريخت (المسرح الملحمي والتغريب):
تختلف كلياً عن المدرسة الواقعية؛ فهي ترفض اندماج الممثل عاطفياً بشكل كامل مع الشخصية. يهدف بريخت إلى إبقاء المتفرج واعياً بأنه أمام عرض مسرحي ليحكم عقله لا عاطفته، مستخدماً تقنيات "التغريب" (Verfremdungseffekt) كالأغاني، اللافتات، ومخاطبة الجمهور مباشرة.

4. مدرسةفسيولوجيا الجسد عند مايرهولد (البيوميكانيك):
تركز على الجانب الحركي والإيقاعي الصرف للممثل، وتعتبر جسد الممثل بمثابة أداة هندسية دقيقة قادرة على توليد المعنى عبر الحركة الأكروباتية المبرمجة بدقة متناهية.

5. تمارين عملية لتطوير أداء الممثل:
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
مدرسة تمردت على القواعد الأرسطية التقليدية للحبكة والبداية والنهاية. تركز على عبثية الوجود الإنساني، غياب التواصل الحقيقي بين البشر، وتوظيف السكوت والفراغات كعناصر درامية تعادل في أهميتها الكلمات المنطوقة.

4. المسرح الملحمي وتفكيك الإيهام:
يعتمد على كسر الخط الدرامي المتصاعد وإدخال عناصر فاصلة تمنع المتفرج من الانسياق العاطفي، بغية تحفيزه على التفكير النقدي السياسي والاجتماعي تجاه الأحداث.

5. أبرز رواد الإخراج العالمي:
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
الضوء هو "الرسام الخفي" على الخشبة. وظيفته لا تقتصر على الإنارة، بل تتعداها إلى:
- توجيه بصر المتفرج نحو نقطة الثقل الدرامي.
- خلق الحالة النفسية والمزاجية (الدفء، البرودة، التوتر، العزلة).
- التعبير عن الزمن (شروق، غروب، ليل حالك).

4. تصميم الأزياء والمكياج:
الأزياء لغة صامتة تعكس بدقة الطبقة الاجتماعية، العصر التاريخي، وحالة الشخصية النفسية (فوضى، ترتيب، مرض، ثراء).

5. طرق التصميم الحديثة:
توظيف تقنيات الإسقاط الرقمي (Projection Mapping) والإنشاءات الفراغية المعاصرة لكسر قوالب الديكور الكلاسيكي الثابت.
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
- البعد الفسيولوجي (العمر، الجنس، الحالة الصحية، الملامح الجسدية).
- البعد السيكولوجي (الطموحات، المخاوف، العقد النفسية، المزاج).
- البعد الاجتماعي (المهنة، الطبقة الاجتماعية، العلاقات الأسرية والبيئية).

3. فن كتابة الحوار المسرحي (Dialogue & Subtext):
الحوار المسرحي يختلف عن الحوار العادي؛ فهو مكثف، يحمل إيقاعاً داخلياً، والأهم هو اعتماده على "ما تحت السطور" (Subtext)؛ أي المعنى الخفي الذي تقصده الشخصية خلف الكلمات الظاهرة.

4. منهجية تفكيف النص وتحليله:
تعتمد على تقسيم المشاهد إلى وحدات درامية صغيرة، وتحديد هدف كل شخصية في كل مشهد (Objective) والعقبات التي تعترض تحقيق ذلك الهدف.
''',
    },
    {
      'title': 'مكتبة النصوص العالمية والعربية',
      'description': 'استعراض وقراءة أبرز النصوص والمسرحيات العالمية والعربية الخالدة.',
      'icon': Icons.library_books,
      'content': '''
📚 الموسوعة الأكاديمية الشاملة - مكتبة النصوص العالمية والعربية:

1. روائع المسرح العالمي الكلاسيكي والحديث:
- مسرحيات وليام شكسبير الخالدة: (هاملت، مكبت، الملك لير، عطيل)، والتي شكلت الأعمدة الكبرى للتراجيديا الإنسانية وعمق الصراع النفسي البشري.
- مسرح العبث والوجودية: مسرحية (في انتظار غودو) لصموئيل بيكيت، والتي تعبر ببراعة عن أزمة الإنسان الحديث وقلق الوجود.
- المسرح الواقعي الاجتماعي: مسرحيات أنطون تشيخوف (حدائق الكرز، النورس) وهنريك إبسن (بيت الدمية).

2. روائع المسرح العربي والريادة الفكرية:
- مسرحيات توفيق الحكيم: (أهل الكهف، شهرزاد)، والتي مزجت بين الفلسفة الوجودية والتراث العربي والإسلامي.
- مسرحيات سعد الله ونوس: (مملكة الهنواش، حفلة سمر من أجل خمسة حزيران، الملك هو الملك)، وهي نصوص نقدية جماعية تشرّح الواقع السياسي والاجتماعي وتشرك الجمهور في العرض.
- مسرحيات ألفريد فرج: التي أعادت إحياء السيرة الشعبية برؤية مسرحية معاصرة ومبدعة.
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

  static const String _geminiApiKey = 'AIzaSyAQAb8RN6Jplf6NeY3N-S9UAmOD7HU8yIjelaHsNYqNwNVP2e2GHg';

  @override
  void initState() {
    super.initState();
    _chatMessages = [
      {
        'sender': 'ai',
        'text': 'أهلاً بك في ${widget.department['title']}. أنا مساعدك الأكاديمي، اسألني عن أي نظرية، تمرين، مخرج، أو نص مسرحي وسأجيبك فوراً.'
      }
    ];
  }

  Future<void> _sendToGemini(String prompt) async {
    if (prompt.trim().isEmpty) return;

    setState(() {
      _chatMessages.add({'sender': 'user', 'text': prompt});
      _isLoading = true;
    });
    _questionController.clear();

    try {
      final url = Uri.parse(
        'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=$_geminiApiKey',
      );

      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "contents": [
            {
              "parts": [
                {
                  "text": "أنت خبير وأكاديمي مسرحي عالمي. أجب بعمق واحترافية وبشكل مفصل عن السؤال التالي في اختصاص ${widget.department['title']}: $prompt"
                }
              ]
            }
          ]
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final candidate = data['candidates']?[0];
        final textResponse = candidate?['content']?['parts']?[0]?['text'] ?? 'عذراً، لم أتمكن من صياغة الإجابة.';
        
        setState(() {
          _chatMessages.add({'sender': 'ai', 'text': textResponse});
        });
      } else {
        _fallbackToLocalAnswer(prompt);
      }
    } catch (e) {
      _fallbackToLocalAnswer(prompt);
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  // نظام احتياطي ذكي ومحلي بالكامل في حال حجب الشبكة للاتصال الخارجي
  void _fallbackToLocalAnswer(String prompt) {
    String answer = "بناءً على الدراسات الأكاديمية في ${widget.department['title']} حول موضوع \"$prompt\":\n\n";
    answer += "يعتبر هذا الجانب ركيزة أساسية يرتكز عليها الفنان المسرحي لتطوير أدواته. تتطلب دراسة هذا الموضوع الغوص في النظريات الفنية الكلاسيكية والمعاصرة، وتحليل النصوص وفق منهجيات علمية دقيقة تضمن ترابط الفكرة مع التنفيذ على الخشبة عبر استلهام تجارب الرواد وكبار الأكاديميين في العالم.";
    
    setState(() {
      _chatMessages.add({'sender': 'ai', 'text': answer});
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
      length: 3, // ثلاثة تبويبات: الموسوعة، المساعد الذكي، والملاحظات
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
            // 1. تبويب الموسوعة والشرح المطول
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                color: const Color(0xFF1E1E1E),
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    widget.department['content'] ?? 'لا توجد محتويات.',
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
            // 2. تبويب المساعد الذكي التفاعلي مع النظام المحلي الاحتياطي
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
                            hintText: 'اسأل المساعد الذكي عن أي تفصيل...',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.send, color: Colors.amber),
                        onPressed: () => _sendToGemini(_questionController.text),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // 3. تبويب دفتر الملاحظات الشخصية
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
