import 'package:flutter/material.dart';

void main() {
  runApp(const TheaterAcademyApp());
}

class TheaterAcademyApp extends StatelessWidget {
  const TheaterAcademyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'أكاديمية المسرح الذكية',
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
      'details': 'يعتبر الإخراج المسرحي العقل المدبر للعمل الفني؛ حيث يترجم النص الأدبي إلى عرض بصري وحركي على خشبة المسرح، من خلال إدارة الممثلين، توزيع الكتل، وتصميم حركة الإضاءة والديكور.',
      'studyMaterial': '📖 الدراسات الشاملة لقسم الإخراج:\n\n1. مدرسة العرض المسرحي الحديث وتفكيك النص.\n2. التكوين الحركي (Blocking) وتوظيف الفضاء المسرحي.\n3. إدارة الممثل واستنطاق الطاقات الشعورية الداخلية.\n4. التناغم بين السينوغرافيا والرؤية الإخراجية العامة.',
    },
    {
      'title': 'قسم النصوص المسرحية',
      'icon': Icons.menu_book,
      'description': 'تحليل البناء الدرامي، النصوص الكلاسيكية والحديثة.',
      'details': 'يهتم هذا القسم بدراسة البناء الدرامي للحبكة، الصراع، الشخصيات، والحوار. يشمل تحليل النصوص الكلاسيكية (مثل مسرحيات شكسبير والإغريق) والنصوص الحديثة والمعاصرة.',
      'studyMaterial': '📖 الدراسات الشاملة لقسم النصوص:\n\n1. علم البنيات الدرامية وتحليل الحبكة (الارتقاء، الذروة، الانفراج).\n2. دراسة النصوص الكلاسيكية والملحمية.\n3. تقنيات كتابة الحوار المبطن والحدث الخفي.\n4. المسرح العبثي والواقعي الحديث.',
    },
    {
      'title': 'قسم الإضاءة',
      'icon': Icons.highlight,
      'description': 'توزيع الضوء، درجات الألوان، وخلق الحالة النفسية للمشهد.',
      'details': 'الإضاءة المسرحية ليست مجرد رؤية للممثلين، بل هي عنصر درامي بحد ذاته يخلق الأبعاد النفسية، يحدد الزمن والمكان، ويوجه عين المشاهد نحو بؤرة الحدث عبر درجات الألوان والظلال.',
      'studyMaterial': '📖 الدراسات الشاملة لقسم الإضاءة:\n\n1. علم الفيزيولوجيا النفسية للألوان على المسرح.\n2. توزيع البؤر الضوئية (Spotlights) والتحكم بالظلال.\n3. الإضاءة التعبيرية مقابل الإضاءة التسجيلية الواقعية.\n4. المزامنة بين الموسيقى وتغيرات الإضاءة.',
    },
    {
      'title': 'قسم الأزياء',
      'icon': Icons.checkroom,
      'description': 'تصميم ملابس الشخصيات بما يتناسب مع الحقبة الزمنية والدراما.',
      'details': 'يعنى بتصميم الأزياء التي تعكس الحالة الاجتماعية والنفسية للشخصية، وتتوافق بدقة مع الحقبة التاريخية أو الرؤية الإخراجية المعاصرة للعرض.',
      'studyMaterial': '📖 الدراسات الشاملة لقسم الأزياء:\n\n1. سيمياء الأزياء ودلالات الألوان التاريخية.\n2. تصميم الزي بما يعكس الصراع النفسي والطبقي للشخصية.\n3. تقنيات الخامات المسرحية وتحملها لدرجات حرارة الإضاءة.\n4. الأزياء التعبيرية في المسرح التجريبي.',
    },
    {
      'title': 'قسم التمثيل',
      'icon': Icons.theater_comedy,
      'description': 'تقنيات الأداء الصوتي، التعبير الجسدي، وتقمص الشخصيات.',
      'details': 'يركز هذا القسم على إعداد الممثل جسدياً ونفسياً وصوتياً، والتدريب على أدوات التعبير، تقمص الأبعاد المختلفة للشخصية، والانسجام التام على خشبة المسرح.',
      'studyMaterial': '📖 الدراسات الشاملة لقسم التمثيل:\n\n1. مدرسة ستانسلافسكي والذاكرة الانفعالية.\n2. إعداد الجسد وفنون الميم والتعبير الحركي.\n3. هندسة الصوت، التنفس، ومخارج الحروف على خشبة المسرح.\n4. كسر الجدار الرابع والتعامل المباشر مع الجمهور.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'أكاديمية المسرح الذكية',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1A1A1A),
        elevation: 0,
      ),
      body: Padding(
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
                title: Text(
                  dept['title'],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    dept['description'],
                    style: TextStyle(fontSize: 14, color: Colors.grey[400]),
                  ),
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
  
  final List<Map<String, String>> _chatMessages = [
    {'sender': 'ai', 'text': 'مرحباً بك في المساعد الذكي التفاعلي! اطرح أي سؤال فني أو أكاديمي يخطر في بالك وسأقوم بالإجابة عليه فوراً.'}
  ];
  
  final List<String> _userNotes = [];

  void _askAi() {
    String question = _questionController.text.trim();
    if (question.isNotEmpty) {
      setState(() {
        _chatMessages.add({'sender': 'user', 'text': question});
        
        // توليد رد ذكي محاكي ومخصص حسب طبيعة القسم
        String aiReply = 'بخصوص سؤالك في (${widget.department['title']}): "${question}"، ينصح أكاديمياً بالتركيز على دراسة النص بعمق وتطبيق التكنيك الفني المناسب لتعزيز البعد الدرامي.';
        if (question.contains('كيف') || question.contains('طريقة')) {
          aiReply = 'إليك التوجيه الفني للإجابة: ابدأ بتحليل المكونات الأساسية، ثم وظّف الأدوات الإبداعية الخاصة بالقسم لتصل إلى التناغم المطلوب على خشبة المسرح.';
        }
        
        _chatMessages.add({'sender': 'ai', 'text': aiReply});
        _questionController.clear();
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
            // العنوان والأيقونة
            Center(
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.amber.withOpacity(0.2),
                child: Icon(widget.department['icon'], size: 35, color: Colors.amber),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              widget.department['title'],
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amber),
            ),
            const SizedBox(height: 8),
            Text(
              widget.department['details'],
              style: TextStyle(fontSize: 14, color: Colors.grey[300], height: 1.4),
            ),
            const Divider(height: 30, color: Colors.grey),

            // الدراسات والشروحات الكاملة للقسم
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.amber.withOpacity(0.3)),
              ),
              child: Text(
                widget.department['studyMaterial'],
                style: const TextStyle(fontSize: 14, color: Colors.white, height: 1.5),
              ),
            ),
            const SizedBox(height: 24),

            // قسم المساعد الذكي (سؤال وجواب متوفر طوال الوقت)
            const Text(
              '🤖 المساعد الذكي (سؤال وجواب دائم):',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.amberAccent),
            ),
            const SizedBox(height: 10),
            Container(
              height: 220,
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
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      padding: const EdgeInsets.all(10),
                      constraints: const BoxConstraints(maxWidth: 260),
                      decoration: BoxDecoration(
                        color: isUser ? Colors.amber[800] : const Color(0xFF252525),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        msg['text']!,
                        style: TextStyle(fontSize: 13, color: isUser ? Colors.black : Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _questionController,
                    decoration: InputDecoration(
                      hintText: 'اسأل المساعد الذكي عن أي استفسار مسرحي...',
                      hintStyle: TextStyle(color: Colors.grey[600], fontSize: 13),
                      filled: true,
                      fillColor: const Color(0xFF1E1E1E),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  onPressed: _askAi,
                  icon: const Icon(Icons.send, color: Colors.amber),
                  style: IconButton.styleFrom(backgroundColor: const Color(0xFF1E1E1E)),
                ),
              ],
            ),
            const Divider(height: 35, color: Colors.grey),

            // دفتر الملاحظات الشخصية
            const Text(
              '📝 دفتر أفكارك وملاحظاتك الإبداعية:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ),
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
