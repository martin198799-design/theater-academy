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
      title: 'خشبة المسرح',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.amber[800],
        scaffoldBackgroundColor: const Color(0xFF121212),
        cardColor: const Color(0xFF1E1E1E),
        colorScheme: ColorScheme.dark(
          primary: Colors.amber,
          secondary: Colors.amberAccent,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, dynamic>> departments = const [
    {
      'title': 'قسم الإخراج المسرحي',
      'icon': Icons.movie_filter,
      'description': 'دراسة الرؤية الإخراجية، التكوين الحركي، وتوجيه الممثلين.',
      'details': 'يعتبر الإخراج المسرحي العقل المدبر للعمل الفني؛ حيث يترجم النص الأدبي إلى عرض بصري وحركي على خشبة المسرح.',
      'studyMaterial': '📖 الدراسات الشاملة لقسم الإخراج:\n\n1. تفكيك النص المسرحي وإعادة صياغته بصرياً.\n2. التكوين الحركي (Blocking) وتوظيف الفضاء.\n3. إدارة الممثل واستنطاق الطاقات الشعورية.',
    },
    {
      'title': 'قسم النصوص المسرحية',
      'icon': Icons.menu_book,
      'description': 'تحليل البناء الدرامي، النصوص الكلاسيكية والحديثة.',
      'details': 'يهتم هذا القسم بدراسة البناء الدرامي للحبكة، الصراع، الشخصيات، والحوار الدرامي.',
      'studyMaterial': '📖 الدراسات الشاملة لقسم النصوص:\n\n1. علم البنيات الدرامية وتحليل الحبكة.\n2. دراسة النصوص الكلاسيكية والملحمية والعبثية.\n3. تقنيات كتابة الحوار المبطن.',
    },
    {
      'title': 'قسم الإضاءة',
      'icon': Icons.highlight,
      'description': 'توزيع الضوء، درجات الألوان، وخلق الحالة النفسية للمشهد.',
      'details': 'الإضاءة المسرحية عنصر درامي أساسي يخلق الأبعاد النفسية، والزمنية للمشهد.',
      'studyMaterial': '📖 الدراسات الشاملة لقسم الإضاءة:\n\n1. سيمولوجيا الألوان وتأثيرها النفسي.\n2. توزيع البؤر الضوئية وصناعة الظلال التعبيرية (Chiaroscuro).',
    },
    {
      'title': 'قسم الأزياء',
      'icon': Icons.checkroom,
      'description': 'تصميم ملابس الشخصيات بما يتناسب مع الحقبة الزمنية والدراما.',
      'details': 'يعنى بتصميم الأزياء التي تعكس الحالة الاجتماعية والنفسية للشخصية وتاريخها.',
      'studyMaterial': '📖 الدراسات الشاملة لقسم الأزياء:\n\n1. سيمياء الأزياء والدلالات التاريخية للحقبة.\n2. تصميم الزي المعبر عن الصراع الطبقي والنفسي.',
    },
    {
      'title': 'قسم التمثيل',
      'icon': Icons.theater_comedy,
      'description': 'تقنيات الأداء الصوتي، التعبير الجسدي، وتقمص الشخصيات.',
      'details': 'يركز هذا القسم على إعداد الممثل جسدياً، نفسياً، وصوتياً وتقمص الأبعاد المختلفة.',
      'studyMaterial': '📖 الدراسات الشاملة لقسم التمثيل:\n\n1. مدرسة ستانسلافسكي والذاكرة الانفعالية.\n2. هندسة الصوت ومخارج الحروف والتعبير الجسدي.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('خشبة المسرح', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        centerTitle: true,
        backgroundColor: const Color(0xFF1A1A1A),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            color: Colors.amber.withOpacity(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.verified, color: Colors.amber, size: 16),
                const SizedBox(width: 8),
                Text(
                  'تصميم وتطوير: إبراهيم سامي',
                  style: TextStyle(color: Colors.amber[300], fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.builder(
                itemCount: departments.length,
                itemBuilder: (context, index) {
                  final dept = departments[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: Colors.amber.withOpacity(0.3), width: 1),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16.0),
                      leading: CircleAvatar(
                        backgroundColor: Colors.amber.withOpacity(0.2),
                        child: Icon(dept['icon'], color: Colors.amber),
                      ),
                      title: Text(dept['title'], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(dept['description'], style: TextStyle(fontSize: 14, color: Colors.grey[400])),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.amber),
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
            ),
          ),
        ],
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

  // ضع مفتاح الـ API الخاص بـ Gemini هنا
  static const String _geminiApiKey = 'ضع_مفتاح_API_هنا';

  @override
  void initState() {
    super.initState();
    _chatMessages = [
      {
        'sender': 'ai',
        'text': 'أهلاً بك في (${widget.department['title']}). أنا مساعدك الذكي الشامل، اسألني عن أي استفسار فني أو إخراجي أو نصي وسأجيبك بعمق واحترافية.'
      }
    ];
  }

  Future<void> _askGeminiAi() async {
    String q = _questionController.text.trim();
    if (q.isEmpty) return;

    setState(() {
      _chatMessages.add({'sender': 'user', 'text': q});
      _questionController.clear();
      _isLoading = true;
    });

    try {
      final url = Uri.parse(
          'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=$_geminiApiKey');

      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "contents": [
            {
              "parts": [
                {
                  "text": "أنت مساعد ذكي ومحترف جداً متخصص في مجال المسرح والفنون الدرامية، تم تطويرك بواسطة المطور إبراهيم سامي. تجيب كخبير أكاديمي وإخراجي ومسرحي متخصص في قسم: ${widget.department['title']}. السؤال هو: $q"
                }
              ]
            }
          ]
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final aiText = data['candidates'][0]['content']['parts'][0]['text'];
        setState(() {
          _chatMessages.add({'sender': 'ai', 'text': aiText});
          _isLoading = false;
        });
      } else {
        setState(() {
          _chatMessages.add({'sender': 'ai', 'text': 'عذراً، حدث خطأ في استجابة الخادم.'});
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _chatMessages.add({'sender': 'ai', 'text': 'تعذر الاتصال بالإنترنت أو المساعد الذكي.'});
        _isLoading = false;
      });
    }
  }

  void _addNote() {
    if (_notesController.text.trim().isNotEmpty) {
      setState(() {
        _userNotes.add(_notesController.text.trim());
        _notesController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.department['title']),
        backgroundColor: const Color(0xFF1A1A1A),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.amber.withOpacity(0.2),
                child: Icon(widget.department['icon'], size: 35, color: Colors.amber),
              ),
            ),
            const SizedBox(height: 16),
            Text(widget.department['title'], style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amber)),
            const SizedBox(height: 8),
            Text(widget.department['details'], style: TextStyle(fontSize: 14, color: Colors.grey[300], height: 1.4)),
            const Divider(height: 30, color: Colors.grey),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.amber.withOpacity(0.3)),
              ),
              child: Text(widget.department['studyMaterial'], style: const TextStyle(fontSize: 14, color: Colors.white, height: 1.5)),
            ),
            const SizedBox(height: 24),

            const Text(
              '🤖 المساعد الذكي (يشبه Gemini):',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.amberAccent),
            ),
            const SizedBox(height: 10),
            Container(
              height: 280,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFF181818),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey[800]!),
              ),
              child: ListView.builder(
                itemCount: _chatMessages.length,
                itemBuilder: (context, index) {
                  final msg = _chatMessages[index];
                  bool isUser = msg['sender'] == 'user';
                  return Align(
                    alignment: isUser ? Alignment.centerLeft : Alignment.centerRight,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      padding: const EdgeInsets.all(12),
                      constraints: const BoxConstraints(maxWidth: 290),
                      decoration: BoxDecoration(
                        color: isUser ? Colors.amber[800] : const Color(0xFF252525),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        msg['text']!,
                        style: TextStyle(fontSize: 13, color: isUser ? Colors.black : Colors.white, height: 1.4),
                      ),
                    ),
                  );
                },
              ),
            ),
            if (_isLoading)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(child: CircularProgressIndicator(color: Colors.amber)),
              ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _questionController,
                    decoration: InputDecoration(
                      hintText: 'اسألني عن أي تفصيل في المسرح...',
                      hintStyle: TextStyle(color: Colors.grey[600], fontSize: 13),
                      filled: true,
                      fillColor: const Color(0xFF1E1E1E),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  onPressed: _isLoading ? null : _askGeminiAi,
                  icon: const Icon(Icons.send, color: Colors.amber),
                  style: IconButton.styleFrom(backgroundColor: const Color(0xFF1E1E1E)),
                ),
              ],
            ),
            const Divider(height: 35, color: Colors.grey),

            const Text('📝 دفتر أفكارك وملاحظاتك الإبداعية:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(height: 10),
            TextField(
              controller: _notesController,
              maxLines: 2,
              decoration: InputDecoration(
                hintText: 'اكتب ملاحظتك أو فكرتك هنا...',
                hintStyle: TextStyle(color: Colors.grey[600], fontSize: 13),
                filled: true,
                fillColor: const Color(0xFF1E1E1E),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              onPressed: _addNote,
              icon: const Icon(Icons.add, color: Colors.black, size: 18),
              label: const Text('حفظ الملاحظة', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                minimumSize: const Size(double.infinity, 40),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
            const SizedBox(height: 12),
            if (_userNotes.isNotEmpty) ...[
              const Text('الملاحظات المحفوظة:', style: TextStyle(fontSize: 13, color: Colors.amberAccent)),
              const SizedBox(height: 6),
              ..._userNotes.map((note) => Card(
                    color: const Color(0xFF1A1A1A),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(note, style: const TextStyle(color: Colors.white70, fontSize: 13)),
                    ),
                  )),
            ],
          ],
        ),
      ),
    );
  }
}
