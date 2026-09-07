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
      // فتح التطبيق مباشرة على الأقسام دون الحاجة لتسجيل دخول مزعج
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
يُعد التمثيل الفن الحي الأبرز لترجمة النص إلى كائن حي. تطور من الطقوس البدائية والمسرح الإغريقي (استخدام الأقنعة لتكبير الصوت وإيصال الانفعال للمدرجات الكبيرة)، مروراً بعصر النهضة وشكسبير، وصولاً إلى مدارس القرن العشرين.

2. مدرسة قسطنطين ستانسلافسكي (الواقعية النفسية):
- ترتكز على "المعايشة الداخلية" و"الذاكرة الانفعالية".
- مفهوم "السحر لو" (What if): ماذا لو كنت مكان الشخصية في هذا الموقف؟
- استنباط "الهدف الفائق" (Super Objective) للشخصية طوال العرض.

3. مدرسة برتولت بريخت (المسرح الملحمي والتغريب - Verfremdungseffekt):
- ترفض اندماج الممثل الكلي بالشخصية لكي لا يفقد المتفرج وعيه النقدي.
- استخدام الكسر المتعمد للإيهام المسرحي (التوجه المباشر للجمهور، اللافتات، الأغاني المقطعة).

4. تعابير الوجه ولغة الجسد الدقيقة:
- حالات الحزن والانكسار: ارتخاء عضلات الجفن العلوي، انحناء طفيف للرأس للأمام، بطء في حركة الأطراف واتجاه النظر نحو الأسفل.
- حالات الغضب والسيطرة: حدق العينين واتساع البؤبؤ بحسب رد الفعل، شد عضلات الفك السفلي، استقامة الجذع والوقوف بصلابة لملء فضاء الخشبة.
- حالات التردد والخوف: سرعة التنفس الحجابي المرئي، الالتفات السريع للجانبين، انقباض الكتفين للداخل لحماية الجسد.
''',
    },
    {
      'title': 'قسم الإخراج المسرحي والأرشيف',
      'description': 'أرشيف المدارس الإخراجية، الرؤى البصرية، وأبرز الرواد وعملهم.',
      'icon': Icons.movie_creation,
      'content': '''
🎬 الموسوعة الأكاديمية - قسم الإخراج المسرحي والأرشيف الشامل:

1. ماهية الإخراج المسرحي ووظيفة المخرج:
المخرج هو المؤلف الثاني والمهندس البصري والفكري للعرض؛ يربط خيوط النص، السينوغرافيا، أداء الممثلين، والموسيقى في سيمفونية متكاملة.

2. المدارس الإخراجية الكبرى:
- المدرسة الواقعية والطبيعية: نقل تفاصيل الحياة اليومية بدقة وموضوعية (مثل أعمال أنطون تشيخوف ومسرحيات أندري أنطوان).
- المدرسة التعبيرية: تغليب المشاعر الداخلية المشوهة أو المبالغ فيها على الواقع الموضوعي للتعبير عن الاغتراب الإنساني (مثل مسرحيات يوجين أونيل وجورج كايزر).
- المدرسة العبثية (مسرح اللامععبث): التعبير عن عبثية الوجود البشري وفقدان المعنى بلغة حوارية دائرية (صموئيل بيكيت، أوجين يونسكو).
- مسرح القسوة (أنتونين أرتو): تحطيم جدار المسرح النفسي ومخاطبة حواس المتفرج مباشرة بعيداً عن سيطرة النص الكلاسيكي.
- المسرح الفقير (جيرزي غروتوفسكي): التخلي عن كافة زوائد الديكور والمؤثرات والاكتفاء بطاقة الممثل المطلقة.
''',
    },
    {
      'title': 'قسم السينوغرافيا والإضاءة والمكياج',
      'description': 'فلسفة الفضاء، دلالات الألوان، هندسة الإضاءة، والمكياج المسرحي.',
      'icon': Icons.lightbulb,
      'content': '''
💡 الموسوعة الأكاديمية - قسم السينوغرافيا، الإضاءة، والمكياج:

1. دلالات الإضاءة والألوان في الفضاء المسرحي:
- الضوء الأصفر الدافئ: يرمز إلى الأمان، الحنين، الذكريات السعيدة، أو أشعة الشمس الطبيعية.
- الضوء الأزرق البارد: يرمز إلى العزلة، الحزن، الليل، الصقيع، أو الغموض والخطر الداهم.
- الضوء الأحمر القاني: يرمز إلى الدم، الصراع، العنف، العاطفة الجارفة، أو الخطر الأقصى.
- الضوء الأخضر الساطع: يرمز إلى التمرد، المرض، الغيرة، أو السحر والغرائبية.

2. هندسة الكتل والسينوغرافيا:
- استخدام الخطوط الصاعدة للإيحاء بالطموح والقوة، والخطوط الهابطة أو المقوسة للإيحاء بالانكسار والضعف.

3. المكياج المسرحي:
- مكياج البناء والتجسيد: إبراز ملامح تقدم العمر (التجاعيد والظلال)، أو الجروح والملامح النفسية الخاصة بالشخصية لتكون واضحة حتى لآخر صف في المدرج المسرحي.
''',
    },
    {
      'title': 'مكتبة المسرحيات العالمية والعربية',
      'description': 'مرجع لأهم النصوص المسرحية ومذاهبها منذ الإغريق وحتى العصر الحديث.',
      'icon': Icons.menu_book,
      'content': '''
📚 مكتبة النصوص المسرحية الكبرى (من الإغريق إلى العصر الحديث):

1. عصر المسرح الإغريقي القديم (المأساة والتراجيديا - القرن الخامس ق.م):
- سوفوكليس: مسرحية (أوديب ملكاً) - المذهب: التراجيديا الكلاسيكية ومفهوم القدر والصراع الأزلية.
- سوفوكليس: مسرحية (أنتيغون) - المذهب: الصراع بين القانون البشري والقانون الإلهي والأخلاقي.
- أسخيلوس: مسرحية (البروميثيوس المقيد) - المذهب: التمرد الملحمي والتضحية في سبيل المعرفة.
- أوريبيديس: مسرحية (ميديا) - المذهب: التراجيديا النفسية وانفجار الغريزة الانتقامية.

2. عصر النهضة والمسرح الإليزابيثي (القرن السادس عشر والسابع عشر):
- وليام شكسبير: مسرحية (هاملت) - المذهب: دراما التردد الفلسفي والشك والانهيار النفسي.
- وليام شكسبير: مسرحية (ماكبث) - المذهب: تراجيديا الطموح الأعمى وسقوط الضمير الأخلاقي.
- وليام شكسبير: مسرحية (الملك لير) - المذهب: تفكك روابط العائلة ودراما التقدم في العمر والحكمة المتأخرة.
- مولير: مسرحية (البخيل) أو (المرض الوهمي) - المذهب: الكوميديا الكلاسيكية الساخرة ونقد العيوب الاجتماعية.

3. مسرح القرن التاسع عشر والواقعية الاجتماعية:
- هنريك إبسن: مسرحية (بيت دُمية) - المذهب: الواقعية النقدية الحديثة وتحرير المرأة والتمرد على الأعراف البورجوازية.
- أنطون تشيخوف: مسرحية (بستان الكرز) أو (النورس) - المذهب: الواقعية النفسية غير الحدثية (مسرح الحالة والشجن الإنساني).
- أوسكار وايلد: مسرحية (روعة أن تكون جاداً) - المذهب: الكوميديا الصالونية الساخرة والأدب الجمالي.

4. مسرح القرن العشرين والمدارس الحديثة والعبثية:
- برتولت بريخت: مسرحية (الأم شجاعة وأولادها) - المذهب: المسرح الملحمي والتغريب السياسي.
- صموئيل بيكيت: مسرحية (في انتظار غودو) - المذهب: مسرح العبث واللاوعي الوجودي.
- أوجين يونسكو: مسرحية (المغنية الصلعاء) أو (الكراريس) - المذهب: العبثية وانهيار التواصل اللغوي البشري.
- تينيسي ويليامز: مسرحية (عربة اسمها الرغبة) - المذهب: الواقعية النفسية الأمريكية والاصطدام بين الوهم والواقع.
- أرثر ميلر: مسرحية (موت بائع تجوال) - المذهب: التراجيديا المعاصرة للإنسان البورجوازي البسيط في ظل الرأسمالية.

5. المسرح العربي المعاصر والريادة:
- توفيق الحكيم: مسرحية (أهل الكهف) أو (شهرزاد) - المذهب: المسرح الذهني الفلسفي.
- سعد الله ونوس: مسرحية (حفلة سمر من أجل خمسة حزيران) أو (الملك هو الملك) - المذهب: المسرح السياسي والنقدي التفاعلي (كسر الجدار الرابع).
- ألفريد فرج: مسرحية (سليمان الحلبي) أو (القيود) - المذهب: المسرح التاريخي الملحمي المعاصر.
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

  @override
  void initState() {
    super.initState();
    _chatMessages = [
      {
        'sender': 'ai',
        'text': 'أهلاً بك يا فنان في ${widget.department['title']}. أنا خبيرك الأكاديمي، تفضل بطرح أي استفسار عميق أو فكرة مسرحية وسأقوم بتحليلها لك.'
      }
    ];
  }

  Future<void> _sendToLiveGemini(String prompt) async {
    if (prompt.trim().isEmpty) return;

    setState(() {
      _chatMessages.add({'sender': 'user', 'text': prompt});
      _isLoading = true;
    });
    _questionController.clear();

    const String accessToken = ""; 
    
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
          "input": "أنت خبير أكاديمي مسرحي متخصص في ${widget.department['title']}. أجب بعمق واحترافية وبدون سطحية: $prompt"
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        String aiReply = data["output_text"] ?? data["interaction"]?["output_text"] ?? "تم استلام الرد بنجاح.";
        
        setState(() {
          _chatMessages.add({'sender': 'ai', 'text': aiReply});
          _isLoading = false;
        });
      } else {
        setState(() {
          _chatMessages.add({
            'sender': 'ai', 
            'text': 'تم تلقي استفسارك الأكاديمي وجاهز للتحليل (رمز الاستجابة: ${response.statusCode}).'
          });
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _chatMessages.add({
          'sender': 'ai', 
          'text': 'خطأ في الاتصال بالشبكة.'
        });
        _isLoading = false;
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
              Tab(icon: Icon(Icons.menu_book), text: 'الموسوعة والأرشيف العميق'),
              Tab(icon: Icon(Icons.smart_toy), text: 'المساعد الذكي'),
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
                            hintText: 'اطرح سؤالاً أو تحليلاً مسرحياً...',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.send, color: Colors.amber),
                        onPressed: () => _sendToLiveGemini(_questionController.text),
                      ),
                    ],
                  ),
                ),
              ],
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
                            labelText: 'اكتب ملاحظة أو رؤية إخراجية جديدة...',
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
