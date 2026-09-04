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
      'icon': Icons.movie_creation,
      'description': 'الرؤية الإخراجية، تكوين الكتل، وإدارة الممثلين.',
      'details': 'دراسات وبحوث شاملة حول مدارس الإخراج الحديثة والتحليل السيميائي للعرض.',
    },
    {
      'title': 'قسم التأليف المسرحي',
      'icon': Icons.menu_book,
      'description': 'بناء الحبكة، الصراع، وتطوير الحوار الدرامي.',
      'details': 'نصوص مسرحية ودراسات في بنيات الدراما العالمية والمحلية.',
    },
    {
      'title': 'قسم الإضاءة',
      'icon': Icons.lightbulb,
      'description': 'التوزيع اللوني، درجات السطوع، وخلق الحالة النفسية.',
      'details': 'دليل فني وتقني شامل لتوزيع الإضاءة المسرحية.',
    },
    {
      'title': 'قسم الأزياء',
      'icon': Icons.checkroom,
      'description': 'التصاميم المناسبة للحقبة الزمنية والدراما.',
      'details': 'أبحاث ودراسات في دلالات الأزياء والأبعاد النفسية والتاريخية.',
    },
    {
      'title': 'قسم التمثيل',
      'icon': Icons.theater_comedy,
      'description': 'الأداء الجسدي والصوتي وتقمص الشخصيات.',
      'details': 'تمارين وتقنيات الأداء المتقدمة ومدارس التمثيل الكلاسيكية والحديثة.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('خشبة المسرح'),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: departments.length,
              itemBuilder: (context, index) {
                final dept = departments[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    leading: Icon(dept['icon'], size: 40, color: Colors.amber),
                    title: Text(
                      dept['title'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
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
          ),
          Container(
            padding: const EdgeInsets.all(12),
            color: Colors.black,
            width: double.infinity,
            child: const Text(
              'Developed by: Ibrahim Sami',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 13),
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

  // ضع مفتاح Gemini API الخاص بك هنا بين علامتي التنصيص
  static const String _geminiApiKey = 'مفتاحك_هنا';

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
      _isLoading = true;
    });
    _questionController.clear();

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
                  "text": "أنت مساعد أكاديمي مسرحي خبير ومحترف. أجب باحترافية عن هذا السؤال ضمن تخصص (${widget.department['title']}): $q"
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
        });
      } else {
        setState(() {
          _chatMessages.add({
            'sender': 'ai',
            'text': 'تعذر الاتصال بالمساعد الذكي (رمز الخطأ: ${response.statusCode}). تأكد من صحة مفتاح الـ API.'
          });
        });
      }
    } catch (e) {
      setState(() {
        _chatMessages.add({
          'sender': 'ai',
          'text': 'حدث خطأ في الاتصال بالإنترنت أو الخادم.'
        });
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.department['title']),
        backgroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.amber.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.amber.withOpacity(0.3)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'نبذة تخصصية ودراسات:',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),
                  ),
                  const SizedBox(height: 8),
                  Text(widget.department['details']),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              '🤖 المساعد الذكي المسرحي:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              height: 250,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade800),
              ),
              child: ListView.builder(
                itemCount: _chatMessages.length,
                itemBuilder: (context, index) {
                  final msg = _chatMessages[index];
                  bool isUser = msg['sender'] == 'user';
                  return Align(
                    alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: isUser ? Colors.amber[800] : Colors.grey[850],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        msg['text'] ?? '',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _questionController,
                    decoration: InputDecoration(
                      hintText: 'اسألني عن أي تفصيل في المسرح...',
                      filled: true,
                      fillColor: Colors.grey[900],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  onPressed: _isLoading ? null : _askGeminiAi,
                  icon: _isLoading
                      ? const CircularProgressIndicator(color: Colors.amber)
                      : const Icon(Icons.send, color: Colors.amber),
                ),
              ],
            ),
            const Divider(height: 40, color: Colors.grey),
            const Text(
              '📝 دفتر أفكارك وملاحظاتك الإبداعية:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _notesController,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'اكتب ملاحظتك أو فكرتك هنا...',
                filled: true,
                fillColor: Colors.grey[900],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                if (_notesController.text.trim().isNotEmpty) {
                  setState(() {
                    _userNotes.add(_notesController.text.trim());
                    _notesController.clear();
                  });
                }
              },
              child: const Text('حفظ الملاحظة', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            if (_userNotes.isNotEmpty) ...[
              const SizedBox(height: 15),
              const Text('الملاحظات المحفوظة:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              ..._userNotes.map((note) => Container(
                    margin: const EdgeInsets.only(bottom: 6),
                    padding: const EdgeInsets.all(8),
                    color: Colors.grey[850],
                    child: Text(note),
                  )),
            ],
          ],
        ),
      ),
    );
  }
}
