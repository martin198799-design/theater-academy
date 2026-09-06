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
      'title': 'قسم التمثيل المسرحي',
      'description': 'دراسة تقنيات الأداء، تقمص الشخصيات، والصوت، وتمارين التطور.',
      'icon': Icons.theater_comedy,
      'content': '''
📚 الموسوعة الأكاديمية الشاملة - قسم التمثيل المسرحي:

1. جذور فن التمثيل وتطور المدارس الأدائية:
يُعد التمثيل المسرحي الفن الحي الذي يترجم النص الأدبي إلى كائن حقيقي ينبض بالحياة على الخشبة. لقد تطور هذا الفن عبر العصور من الطقوس البدائية والمسرح الإغريقي اليوناني المعتمد على الأقنعة، مروراً بمسرح النهضة وشكسبير، وصولاً إلى المدارس الحديثة في القرن العشرين.

2. مدرسة قسطنطين ستانسلافسكي (الواقعية النفسية):
تعتمد على مبدأ "عصر الوجد" أو المعايشة الداخلية واستدعاء "الذاكرة الانفعالية".

3. مدرسة برتولت بريخت (المسرح الملحمي والتغريب):
ترفض اندماج الممثل كلياً بالشخصية وتستخدم تقنيات التغريب لإبقاء المتفرج واعياً.
''',
    },
    {
      'title': 'قسم الإخراج المسرحي',
      'description': 'بناء الرؤية الإخراجية، المدارس، والنظريات الإخراجية الحديثة.',
      'icon': Icons.movie_creation,
      'content': '''
📚 الموسوعة الأكاديمية الشاملة - قسم الإخراج المسرحي:

1. ماهية الإخراج المسرحي ووظيفة المخرج:
المخرج هو المؤلف الثاني للعرض المسرحي؛ يربط خيوط النص، السينوغرافيا، أداء الممثلين، والموسيقى في سيمفونية بصرية واحدة.

2. المسرح الفقير عند جيرزي غروتوفسكي:
مدرسة تعتمد كلياً على طاقة الممثل الجسدية والصوتية المطلقة متخلدة عن زوائد الديكور.
''',
    },
    {
      'title': 'قسم السينوغرافيا والديكور',
      'description': 'تصميم المنظر المسرحي، الإضاءة، الأزياء، وفلسفة الفضاء.',
      'icon': Icons.lightbulb,
      'content': '''
📚 الموسوعة الأكاديمية الشاملة - قسم السينوغرافيا والديكور:
تتكامل في هذا القسم عناصر الفضاء، الكتل، الإضاءة (الرسام الخفي)، والأزياء لخلق بيئة العرض المعبرة عن الصراع الداخلي.
''',
    },
    {
      'title': 'قسم النصوص المسرحية',
      'description': 'تحليل البناء الدرامي، الحوار، وتوجيهات المؤلف.',
      'icon': Icons.menu_book,
      'content': '''
📚 الموسوعة الأكاديمية الشاملة - قسم النصوص المسرحية:
يرتكز النص على الصراع، وتصاعد الأحداث، والذروة، وفهم الأبعاد الثلاثة للشخصية وما وراء السطور (Subtext).
''',
    },
    {
      'title': 'مكتبة النصوص العالمية والعربية',
      'description': 'استعراض وقراءة أبرز النصوص والمسرحيات العالمية والعربية الخالدة.',
      'icon': Icons.library_books,
      'content': '''
📚 الموسوعة الأكاديمية الشاملة - المكتبة المسرحية:
تضم روائع شكسبير، مسرح العبث لبيكيت، وأعمال سعد الله ونوس وتوفيق الحكيم.
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
        'text': 'أهلاً بك في ${widget.department['title']}. أنا خبيرك الأكاديمي، اسألني عن أي استفسار وسأجيبك تفصيلياً.'
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

    // 💡 تم ترك خانة التوكن فارغة هنا لتجاوز حظر GitHub الأمني بنجاح
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
          "input": "أنت خبير أكاديمي مسرحي متخصص حصرياً في ${widget.department['title']}. أجب عن السؤال التالي بأسلوب أكاديمي وعميق ومفصل باللغة العربية: $prompt"
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
            'text': 'عذراً، حدث استجابة من الخادم (كود الخطأ: ${response.statusCode}).'
          });
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _chatMessages.add({
          'sender': 'ai', 
          'text': 'خطأ في الاتصال بالشبكة: $e'
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
              Tab(icon: Icon(Icons.menu_book), text: 'الموسوعة الشاملة'),
              Tab(icon: Icon(Icons.smart_toy), text: 'المساعد الذكي (حي)'),
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
                            hintText: 'اسأل خبير جيمناي الحي...',
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
