import 'package:flutter/material.dart';
import 'dart:math';

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
      'aiTips': [
        '💡 نصيحة إخراجية: جرب استخدام "تكنيك الكتل البشرية" في المشهد الصراعي لإبراز هيمنة شخصية على أخرى.',
        '🎬 فكرة متجددة: وظّف الصمت المسرحي (Pause) لمدה 3 ثوانٍ قبل جمل الذروة لمضاعفة التوتر الدرامي.',
        '👁️ رؤية بصرية: اجعل إيقاع حركة الممثلين يعكس الحالة النفسية للمجتمع داخل النص (سريع ومتوتر أو بطيء وثقيل).'
      ]
    },
    {
      'title': 'قسم النصوص المسرحية',
      'icon': Icons.menu_book,
      'description': 'تحليل البناء الدرامي، النصوص الكلاسيكية والحديثة.',
      'details': 'يهتم هذا القسم بدراسة البناء الدرامي للحبكة، الصراع، الشخصيات، والحوار. يشمل تحليل النصوص الكلاسيكية (مثل مسرحيات شكسبير والإغريق) والنصوص الحديثة والمعاصرة.',
      'aiTips': [
        '✍️ تحليل درامي: ابحث دائماً عن "الحدث الخفي" خلف الكلمات الظاهرة في حوارات الشخصيات.',
        '📜 فكرة نصية: جرب إعادة كتابة مشهد تقليدي من منظور الشخصية الثانوية أو "الشرير".',
        '🔍 تقنية الحوار: الحوار الجيد هو ما يحمل فعلاً درامياً وليس مجرد تبادل معلومات.'
      ]
    },
    {
      'title': 'قسم الإضاءة',
      'icon': Icons.highlight,
      'description': 'توزيع الضوء، درجات الألوان، وخلق الحالة النفسية للمشهد.',
      'details': 'الإضاءة المسرحية ليست مجرد رؤية للممثلين، بل هي عنصر درامي بحد ذاته يخلق الأبعاد النفسية، يحدد الزمن والمكان، ويوجه عين المشاهد نحو بؤرة الحدث عبر درجات الألوان والظلال.',
      'aiTips': [
        '💡 تأثير الألوان: استخدام الإضاءة الزرقاء الباردة مع تباين خفيف يبرز مشاعر العزلة والوحدة.',
        '🔦 توجيه البؤرة (Spotlight): استخدم بؤرة ضيقة مركزة على وجه الممثل لتعزيز مشهد المونولوج الداخلي.',
        '🌅 حركة الظلال: الظلال الطويلة على خلفية المسرح تضيف عمقاً درامياً ورهبة للمشهد.'
      ]
    },
    {
      'title': 'قسم الأزياء',
      'icon': Icons.checkroom,
      'description': 'تصميم ملابس الشخصيات بما يتناسب مع الحقبة الزمنية والدراما.',
      'details': 'يعنى بتصميم الأزياء التي تعكس الحالة الاجتماعية والنفسية للشخصية، وتتوافق بدقة مع الحقبة التاريخية أو الرؤية الإخراجية المعاصرة للعرض.',
      'aiTips': [
        '👗 دلالة الألوان: تدرجات الألوان الترابية تعكس ارتباط الشخصية بالواقع الصلب أو المعاناة.',
        '🧵 تفاصيل الأزياء: تمزق بسيط في زي الشخصية قد يروي قصة تاريخها النضالي أو صراعها دون كلمات.',
        '👑 التباين الطبقي: اجعل أزياء الطبقة الارستقراطية تتميز بقماش حاد اللمعة مقارنة بالطبقات الأخرى.'
      ]
    },
    {
      'title': 'قسم التمثيل',
      'icon': Icons.theater_comedy,
      'description': 'تقنيات الأداء الصوتي، التعبير الجسدي، وتقمص الشخصيات.',
      'details': 'يركز هذا القسم على إعداد الممثل جسدياً ونفسياً وصوتياً، والتدريب على أدوات التعبير، تقمص الأبعاد المختلفة للشخصية، والانسجام التام على خشبة المسرح.',
      'aiTips': [
        '🎭 الذاكرة الانفعالية: استدعِ موقفاً شعورياً حقيقياً لتوظيف الصدق الشعوري في المشاهد الدرامية.',
        '🗣️ الأداء الصوتي: التحكم في طبقات الصوت (القرارة والقرار والجواب) يغير تماماً وقع الجملة على المتفرج.',
        '🤸 التعبير الجسدي: لغة الجسد المستقرة تعكس ثقة الشخصية، بينما الحركات العشوائية تظهر القلق والاضطراب.'
      ]
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
  late String currentAiTip;
  final TextEditingController _notesController = TextEditingController();
  List<String> userNotes = [];

  @override
  void initState() {
    super.initState();
    _getRandomTip();
  }

  void _getRandomTip() {
    List<String> tips = widget.department['aiTips'];
    setState(() {
      currentAiTip = tips[Random().nextInt(tips.length)];
    });
  }

  void _addNote() {
    if (_notesController.text.trim().isNotEmpty) {
      setState(() {
        userNotes.add(_notesController.text.trim());
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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.amber.withOpacity(0.2),
                child: Icon(widget.department['icon'], size: 40, color: Colors.amber),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.department['title'],
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.department['details'],
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[300],
                height: 1.5,
              ),
            ),
            const Divider(height: 32, color: Colors.grey),
            
            // صندوق المساعد الذكي والشروحات المتجددة
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.amber.withOpacity(0.5)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.psychology, color: Colors.amber),
                          SizedBox(width: 8),
                          Text(
                            'المساعد الذكي للأقسام',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.amber),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.refresh, color: Colors.amberAccent),
                        onPressed: _getRandomTip,
                        tooltip: 'توليد شروح ورؤى جديدة',
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    currentAiTip,
                    style: const TextStyle(fontSize: 14, color: Colors.white, height: 1.4),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // قسم كتابة الملاحظات والأفكار الشخصية
            const Text(
              'دفتر أفكارك وملاحظاتك الإبداعية:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _notesController,
              maxLines: 2,
              decoration: InputDecoration(
                hintText: 'اكتب فكرتك أو ملاحظتك المسرحية هنا...',
                hintStyle: TextStyle(color: Colors.grey[600]),
                filled: true,
                fillColor: const Color(0xFF1E1E1E),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: _addNote,
              icon: const Icon(Icons.add, color: Colors.black),
              label: const Text('حفظ الملاحظة', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                minimumSize: const Size(double.infinity, 45),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 16),
            if (userNotes.isNotEmpty) ...[
              const Text(
                'ملاحظاتك المحفوظة:',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.amberAccent),
              ),
              const SizedBox(height: 8),
              ...userNotes.map((note) => Card(
                    color: const Color(0xFF1A1A1A),
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(note, style: const TextStyle(color: Colors.white70)),
                    ),
                  )),
            ],
          ],
        ),
      ),
    );
  }
}
