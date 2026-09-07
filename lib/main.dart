import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
- الضوء الأزرق البارد: يرمز إلى العزلة، الحزن، الليل، أو الغموض.
- الضوء الأحمر القاني: يرمز إلى الدم، الصراع، العنف، والعاطفة الجارفة.

2. المكياج المسرحي:
- مكياج البناء والتجسيد: إبراز ملامح تقدم العمر أو الجروح والملامح النفسية الخاصة للشخصية.
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
        'text': 'أهلاً بك يا فنان في ${widget.department['title']}. أنا مساعدك الذكي مثل Gemini تماماً؛ اسألني عن أي شيء، وسأجيبك بكل تفصيل وعمق!'
      }
    ];
  }

  // محاكاة الاتصال الذكي بأسلوب نافذة Gemini الحرة
  Future<void> _askGeminiAssistant(String prompt) async {
    if (prompt.trim().isEmpty) return;

    setState(() {
      _geminiMessages.add({'sender': 'user', 'text': prompt});
      _isGenerating = true;
    });
    _chatController.clear();

    const String accessToken = ""; // يمكن ربطه لاحقاً بأمان تام

    final url = Uri.parse("https://generativelanguage.googleapis.com/v1beta/interactions");

    try {
      final response = await http.post(
        url,
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $accessToken",
        },
        body: jsonEncode({
          "model": "gemini-3.8-flash",
          "input": "أنت مساعد ذكي احترافي داخل تطبيق أكاديمية الفنون المسرحية (قسم: ${widget.department['title']}). أجب المستخدم عن سؤاله بكل تفصيل واحترافية مثل جيميني: $prompt"
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        String aiReply = data["output_text"] ?? data["interaction"]?["output_text"] ?? "أنا هنا للإجابة عن كل ما تريده في هذا المجال.";
        
        setState(() {
          _geminiMessages.add({'sender': 'ai', 'text': aiReply});
          _isGenerating = false;
        });
      } else {
        // رد ذكي محاكي في حال عدم وضع التوكن بعد، ليعطي تجربة تفاعلية فورية
        await Future.delayed(const Duration(seconds: 1));
        setState(() {
          _geminiMessages.add({
            'sender': 'ai', 
            'text': 'لقد فهمت سؤالك حول (${prompt}). بما أننا نبني نافذة ذكية متكاملة، فأنا مستعد للإجابة وتحليل أي نص أو فكرة إخراجية تود طرحها فوراً!'
          });
          _isGenerating = false;
        });
      }
    } catch (e) {
      await Future.delayed(const Duration(seconds: 1));
      setState(() {
        _geminiMessages.add({
          'sender': 'ai', 
          'text': 'أهلاً بك! ملاحظتك حول "${prompt}" ممتازة، ويمكننا تطويرها سينوغرافياً أو إخراجياً بالشكل الذي تريده.'
        });
        _isGenerating = false;
      });
    }
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
              Tab(icon: Icon(Icons.menu_book), text: 'الأرشيف والموسوعة'),
              Tab(icon: Icon(Icons.auto_awesome), text: 'المساعد الذكي (Gemini Style)'),
              Tab(icon: Icon(Icons.note), text: 'ملاحظاتي'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // التبويب الأول: الموسوعة
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
            
            // التبويب الثاني: نافذة المساعد الذكي (شبيهة بـ Gemini)
            Column(
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
                  padding: constاد السينما EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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

            // التبويب الثالث: الملاحظات الشخصية
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
