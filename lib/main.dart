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
  
  late final List<Map<String, String>> _chatMessages;
  final List<String> _userNotes = [];

  @override
  void initState() {
    super.initState();
    _chatMessages = [
      {
        'sender': 'ai',
        'text': 'أهلاً بك يا إبراهيم! أنا مساعدك الذكي المتخصص في (${widget.department['title']}). اسألني عن أي نص، تحليل، رؤية إخراجية، أو تقنية فنية وسأجيبك فوراً.'
      }
    ];
  }

  void _askAi() {
    String q = _questionController.text.trim();
    if (q.isEmpty) return;

    setState(() {
      _chatMessages.add({'sender': 'user', 'text': q});
      _questionController.clear();

      // ردود ذكية ومخصصة حسب السؤال ومجال القسم
      String reply = 'أهلاً بك. بصفتي مساعدك الذكي، أرى أن دراسة هذا الجانب في (${widget.department['title']}) تتطلب الغوص في تفاصيل النص وتوظيف الأدوات التعبيرية بدقة عالية.';

      if (q.contains('هاملت') || q.contains('شكسبير')) {
        reply = '🎭 مشهد مقترح من مسرحية "هاملت" (المونولوج الشهير):\n\nهاملت: "أكون أو لا أكون.. تلك هي المسألة. أيهما أكثر نبلاً في النفس؟ أن تتحمل ضربات القدر الظالم وسهامه، أم أن تثور على طوفان من الأحزان وفي الصراع تضع لها حدّاً؟"\n\n💡 توجيه إخراجي: يفضل في هذا المشهد استخدام إضاءة بؤرية (Spotlight) جانبية خافتة لتعكس صراع الشخصية الداخلي وعزلتها.';
      } else if (q.contains('صح النوم') || q.contains('بترا')) {
        reply = '📜 بخصوص مسرحيات مثل "صح النوم" أو "بترا"، فهي تمثل إرثاً درامياً غنياً يدمج بين الشعرية والرمزية السياسية والاجتماعية. يمكن تحليل البناء الدرامي عبر التركيز على الصراع بين السلطة والفرد، وتوظيف الإيقاع الموسيقي الشعبي كعنصر درامي فاعل.';
      } else if (q.contains('إخراج') || q.contains('رؤية')) {
        reply = '🎬 الرؤية الإخراجية المتكاملة تعتمد على تفكيك النص الأصلي، إيجاد "ثيمة مركزية" (Core Theme)، وتوجيه الممثلين للعمل بروح الفريق الواحد مع إخضاع السينوغرافيا والإضاءة لخدمة المعنى الكلي.';
      } else if (q.contains('تمثيل') || q.contains('ممثل')) {
        reply = '🎭 إعداد الممثل يبدأ من التحكم المطلق في أدواته الثلاثة: الجسد، الصوت، والذاكرة الانفعالية. تذكر دائماً أن الصمت الناطق على المسرح أحياناً يكون أقوى بكثير من أطول الحوارات.';
      } else {
        reply = '💡 إجابة ذكية واحترافية: سؤالك في (${widget.department['title']}) يفتح الباب أمام آفاق إبداعية واسعة. ننصح دائماً بالربط بين البعد النظري والتطبيق العملي على خشبة المسرح لضمان نجاح العرض.';
      }

      _chatMessages.add({'sender': 'ai', 'text': reply});
    });
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

            // الدراسات والشروحات الكاملة
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

            // المساعد الذكي التفاعلي (سؤال وجواب دائم)
            const Text(
              '🤖 المساعد الذكي التفاعلي (اسألني بأي وقت):',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.amberAccent),
            ),
            const SizedBox(height: 10),
            Container(
              height: 250,
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
                      constraints: const BoxConstraints(maxWidth: 280),
                      decoration: BoxDecoration(
                        color: isUser ? Colors.amber[800] : const Color(0xFF252525),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        msg['text']!,
                        style: TextStyle(fontSize: 13, color: isUser ? Colors.black : Colors.white, height: 1.3),
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
                      hintText: 'اطرح سؤالك أو اطلب نصاً أو رؤية فنية...',
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
