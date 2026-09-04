import 'package:flutter/material.dart';

void main() {
  runApp(const TheaterAcademyApp());
}

class TheaterAcademyApp extends StatelessWidget {
  const TheaterAcademyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'أكاديمية المسرح',
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
    },
    {
      'title': 'قسم النصوص المسرحية',
      'icon': Icons.menu_book,
      'description': 'تحليل البناء الدرامي، النصوص الكلاسيكية والحديثة.',
    },
    {
      'title': 'قسم الإضاءة',
      'icon': Icons.highlight,
      'description': 'توزيع الضوء، درجات الألوان، وخلق الحالة النفسية للمشهد.',
    },
    {
      'title': 'قسم الأزياء',
      'icon': Icons.checkroom,
      'description': 'تصميم ملابس الشخصيات بما يتناسب مع الحقبة الزمنية والدراما.',
    },
    {
      'title': 'قسم التمثيل',
      'icon': Icons.theater_comedy,
      'description': 'تقنيات الأداء الصوتي، التعبير الجسدي، وتقمص الشخصيات.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'أكاديمية المسرح - Theater Academy',
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
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('تم اختيار: ${dept['title']}'),
                      backgroundColor: Colors.grey[900],
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
