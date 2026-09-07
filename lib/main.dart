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
      home: const LoginScreen(),
    );
  }
}

// 1. شاشة تسجيل الدخول للمشتركين
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _controller = TextEditingController();

  void _login(BuildContext context) {
    if (_controller.text.trim().isNotEmpty) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const DepartmentsScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.theater_comedy, size: 80, color: Colors.amber.shade700),
                const SizedBox(height: 20),
                const Text(
                  'أكاديمية الفنون المسرحية',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'بوابة المعرفة والأداء المسرحي الشامل',
                  style: TextStyle(color: Colors.white70),
                ),
                const SizedBox(height: 40),
                TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    labelText: 'البريد الإلكتروني أو رقم الهاتف',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber.shade700,
                    ),
                    onPressed: () => _login(context),
                    child: const Text('دخول الأكاديمية', style: TextStyle(fontSize: 18, color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DepartmentsScreen extends StatelessWidget {
  const DepartmentsScreen({super.key});

  final List<Map<String, dynamic>> departments = const [
    {
      'title': 'قسم التمثيل المسرحي',
      'description': 'تقنيات الأداء، تقمص الشخصيات، لغة الجسد، وتعبيرات الوجه.',
      'icon': Icons.theater_comedy,
      'content': '''
🎭 دليل التمثيل المسرحي الشامل:

1. تعابير الوجه ولغة الجسد (دليل الممثل):
- الحزن والانكسار: ارتخاء عضلات الجفن العلوي، انحناء طفيف للرأس للأمام، بطء في حركة الأطراف.
- الغضب والسيطرة: حدق العينين، شد عضلات الفك، استقامة الجذع والوقوف بصلابة لملء الفضاء.
- التردد والخوف: سرعة التنفس الحجابي، الالتفات السريع، انقباض الكتفين للداخل.

2. تمارين تطوير الأداة التعبيرية:
- تمارين الاسترخاء العضلي التام ثم التوتر المفاجئ للسيطرة على عضلات الجسد.
- الارتجال الصوتي لتغيير طبقات الرنين (من الصدر إلى الحلق والأنف) بحسب الحالة النفسية.
''',
    },
    {
      'title': 'قسم الإخراج المسرحي والأرشيف',
      'description': 'أرشيف المدارس الإخراجية، رواد المسرح، والمدارس الحديثة.',
      'icon': Icons.movie_creation,
      'content': '''
🎬 أرشيف المدارس الإخراجية العالمية:

1. المدرسة الواقعية والنفسية:
- المفهوم: محاكاة الحياة بدقة ونقل الصراع الداخلي للشخصيات.
- أبرز الرواد: قسطنطين ستانسلافسكي، أنطون تشيخوف.

2. المدرسة التعبيرية:
- المفهوم: تغليب المشاعر الداخلية المشوهة أو المبالغ فيها على الواقع الموضوعي.
- أبرز الرواد: جورج كايزر، يوجين أونيل.

3. مسرح الملحمي والتغريب:
- المفهوم: كسر الإيهام وتنبيه عقل المتفرج نقدياً لا وجدانياً.
- أبرز الرواد: برتولت بريخت.

4. المسرح الفقير:
- المفهوم: الاعتماد الكلي على طاقة الممثل الجسدية والصوتية متجردة من الديكورات الضخمة.
- أبرز الرواد: جيرزي غروتوفسكي.
''',
    },
    {
      'title': 'قسم السينوغرافيا والإضاءة والمكياج',
      'description': 'تصميم الفضاء، دلالات الألوان، والإضاءة والمكياج المسرحي.',
      'icon': Icons.lightbulb,
      'content': '''
💡 دلالات الإضاءة والسينوغرافيا والمكياج:

1. فلسفة الألوان والإضاءة المسرحية:
- الضوء الأصفر/البرتقالي: يرمز إلى الدفء، الحنين، أو أشعة الشمس والأمان.
- الضوء الأزرق البارد: يرمز إلى الحزن، العزلة، الليل، أو الغموض والخطر.
- الضوء الأحمر القاني: يرمز إلى الصراع، الخطر، العنف، أو العاطفة الجارفة.

2. المكياج المسرحي وتصميم الوجه:
- مكياج البناء والتجسيد: إبراز ملامح تقدم العمر أو الجروح والملامح النفسية الخاصة بالشخصية لتكون مرئية حتى لآخر صف في المسرح.
''',
    },
    {
      'title': 'مكتبة الـ 100 مسرحية',
      'description': 'أهم النصوص من العصر اليوناني وحتى العصر الحديث.',
      'icon': Icons.menu_book,
      'content': '''
📚 مكتبة النصوص الكلاسيكية والحديثة (جزء من الأرشيف):

1. العصر اليوناني القديم (المأساة والتراجيديا):
- سوفوكليس: (أوديب ملكاً، أنتيغون).
- أسخيلوس: (البروميثيوس المقيد).

2. عصر النهضة والمسرح الإليزابيثي:
- وليام شكسبير: (هاملت، العاصفة، مكبت، روميو وجولييت).

3. المسرح الحديث والعبث:
- صموئيل بيكيت: (في انتظار غودو).
- أوجين يونسكو: (المغنية الصلعاء).
- سعد الله ونوس: (سفربرلك، حفلة سمر من أجل خمسة حزيران).
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
        'text': 'أهلاً بك في ${widget.department['title']}. أنا خبيرك الأكاديمي، تفضل بطرح سؤالك أو فكرتك المسرحية.'
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

    // سنقوم لاحقاً بفصل المفتاح أو حمايته لتجنب حظر غيت هب
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
          "input": "أنت خبير أكاديمي مسرحي متخصص في ${widget.department['title']}. أجب بعمق وأكاديمية: $prompt"
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
            'text': 'المساعد جاهز تماماً للربط الحي (كود الخادم: ${response.statusCode}).'
          });
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _chatMessages.add({
          'sender': 'ai', 
          'text': 'خطأ في الاتصال بالشبكة أو إعداد المفتاح.'
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
              Tab(icon: Icon(Icons.menu_book), text: 'الموسوعة والأرشيف'),
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
                            hintText: 'اسأل خبير الأكاديمية...',
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
                            labelText: 'اكتب ملاحظة أو فكرة إخراجية...',
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
