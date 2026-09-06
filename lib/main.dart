import 'package:flutter/material.dart';

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
• مدارس التمثيل ونظرياته:
- مدرسة قسطنطين ستانسلافسكي (الذاكرة الانفعالية وصدق الإحساس الداخلي).
- مدرسة برتولت بريخت (التغريب والمسرح الملحمي، تفعيل دور المتفرج الواعي).
- مدرسة مايرهولد (البيوميكانيك - تدريب الجسد الإيقاعي).

• تمارين عملية لتطوير أداء الممثل:
1. تمارين التنفس العميق والتحكم بالصوت ومخارج الحروف.
2. الارتجل الحر لخلق الاستجابة التلقائية للمواقف المفاجئة.
3. التركيز البصري والصفاء الذهني لعزل المشتتات والاندماج الكامل بالشخصية.
4. الاسترخاء العضلي للتخلص من التوتر الجسدي قبل صعود الخشبة.
''',
    },
    {
      'title': 'قسم الإخراج المسرحي',
      'description': 'بناء الرؤية الإخراجية، المدارس، والنظريات الإخراجية الحديثة.',
      'icon': Icons.movie_creation,
      'content': '''
• أبرز المدارس والنظريات الإخراجية:
- المسرح الفقير (جيرزي غروتوفسكي): التركيز المطلق على الممثل وإلغاء الديكورات المعقدة.
- مسرح العبث واللاوعي: التمرد على المنطق التقليدي في طرح الأسئلة الوجودية (صموئيل بيكيت، يوجين يونسكو).
- المسرح الملحمي: كسر الإيهام وخلق المسافة النقدية بين المتفرج العرض.

• أبرز المخرجين العالميين:
- بيتر بروك، أوتو فالنتين، وستانسلافسكي في مرحلة الإخراج المبكر.
''',
    },
    {
      'title': 'قسم السينوغرافيا والديكور',
      'description': 'تصميم المنظر المسرحي، الإضاءة، الأزياء، وفلسفة الفضاء.',
      'icon': Icons.lightbulb,
      'content': '''
• عناصر السينوغرافيا الأساسية:
1. الديكور والكتل الفراغية: توزيع العناصر على الخشبة لدعم الدلالة النفسية والدرامية للنص.
2. تصميم الإضاءة: توجيه بصر المتفرج، خلق الحالة المزاجية، والتعبير عن الزمن واللون النفسي (التباين، الحِدّة، الظلال).
3. تصميم الأزياء والمكياج: عكس الطبقة الاجتماعية، العصر التاريخي، والحالة النفسية للشخصية.

• طرق التصميم الحديثة:
- الاعتماد على الرمزية بدلاً من النقل الواقعي الحرفي للأمكنة.
- استخدام التكنولوجيا والإسقاطات الضوئية (Projection Mapping) في الفضاء المسرحي المعاصر.
''',
    },
    {
      'title': 'قسم النصوص المسرحية',
      'description': 'تحليل البناء الدرامي، الحوار، وتوجيهات المؤلف.',
      'icon': Icons.menu_book,
      'content': '''
• عناصر البناء الدرامي للنص:
1. الحدث والحبكة: العقدة، الذروة، والحل الدرامي.
2. الشخصيات: الأبعاد الثلاثة (الفسيولوجي، السيكولوجي، والاجتماعي).
3. الحوار: الإيقاع، الدلالة، والصراع الداخلي والخارجي.

• منهجية تحليل النص المسرحي:
- تفكيك الوحدات الدرامية وتحديد الهدف الخفي (Subtext) وراء كل جملة حوارية.
''',
    },
    {
      'title': 'مكتبة النصوص العالمية',
      'description': 'استعراض وقراءة أبرز النصوص والمسرحيات العالمية والعربية الخالدة.',
      'icon': Icons.library_books,
      'content': '''
• أبرز النصوص المسرحية العالمية:
- هاملت، الملك لير، ومكبت (وليام شكسبير).
- في انتظار غودو (صموئيل بيكيت).
- حدائق الكرز (أنطون تشيخوف).
- بيت الارهن (هنريك إبسن).

• أبرز النصوص المسرحية العربية:
- مسرحيات توفيق الحكيم (أهل الكهف، ششهرزاد).
- مسرحيات سعد الله ونوس (مملكة الهنواش، حفلة سمر من أجل خمسة حزيران).
- مسرحيات ألفريد فرج (علي الزيبق، سليمان الحلبي).
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
  final TextEditingController _notesController = TextEditingController();
  final List<String> _userNotes = [];

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
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.department['title']),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.menu_book), text: 'الموسوعة والدراسات'),
              Tab(icon: Icon(Icons.note), text: 'ملاحظاتي'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // تاب الموسوعة الأكاديمية الشاملة
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                color: const Color(0xFF1E1E1E),
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    widget.department['content'] ?? 'لا توجد محتويات إضافية حالياً.',
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.8,
                      color: Colors.white70,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
            ),
            // تاب الملاحظات الشخصية
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
