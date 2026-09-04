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
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: const Color(0xFF121212),
        fontFamily: 'Cairo',
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أكاديمية المسرح', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1F1F1F),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'أهلاً بك، ابراهيم',
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _AcademyCard(
                    title: 'النصوص المسرحية',
                    icon: Icons.book,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ScriptsScreen()),
                      );
                    },
                  ),
                  _AcademyCard(
                    title: 'قسم التمثيل',
                    icon: Icons.person,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ActingScreen()),
                      );
                    },
                  ),
                  _AcademyCard(
                    title: 'رؤى الإخراج',
                    icon: Icons.movie_creation,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DirectingScreen()),
                      );
                    },
                  ),
                  _AcademyCard(
                    title: 'إدارة المسرح',
                    icon: Icons.theater_comedy,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ManagementScreen()),
                      );
                    },
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

class _AcademyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;

  const _AcademyCard({required this.title, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.deepPurple.withOpacity(0.3)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: Colors.deepPurpleAccent),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class ScriptsScreen extends StatelessWidget {
  const ScriptsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('النصوص المسرحية العالمية', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1F1F1F),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          AcademyDetailTile(
            title: 'مسرحية هاملت (Hamlet)',
            description: 'للكاتب وليم شكسبير - دراما الخطيئة، الانتقام، والتردد الوجودي.',
          ),
          AcademyDetailTile(
            title: 'مسرحية في انتظار غودو (Waiting for Godot)',
            description: 'للكاتب صموئيل بيكيت - تحفة العبث واللايقين البشري.',
          ),
          AcademyDetailTile(
            title: 'مسرحية الأم كولاج (Mother Courage)',
            description: 'للكاتب برتولت بريشت - مسرح الملحمة ونقد أهوال الحرب.',
          ),
          AcademyDetailTile(
            title: 'مسرحية أوديب الملك (Oedipus Rex)',
            description: 'للكاتب سوفوكليس - قمة التراجيديا الإغريقية ومواجهة القدر.',
          ),
        ],
      ),
    );
  }
}

class ActingScreen extends StatelessWidget {
  const ActingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('قسم التمثيل', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1F1F1F),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          AcademyDetailTile(
            title: 'تقنيات التجسيد الدرامي',
            description: 'دراسة أدوات الممثل الجسدية والنفسية لبناء الشخصية بعمق.',
          ),
          AcademyDetailTile(
            title: 'الأداء الصوتي والإلقاء',
            description: 'تمارين التنفس، طبقات الصوت، التلونيّة الصوتية، ومخارج الحروف.',
          ),
        ],
      ),
    );
  }
}

class DirectingScreen extends StatelessWidget {
  const DirectingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('رؤى الإخراج', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1F1F1F),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          AcademyDetailTile(
            title: 'التكوين البصري وتخطيط الحركة',
            description: 'توزيع الممثلين على الخشبة، هندسة الكتل، وتشكيل اللوحات البصرية.',
          ),
          AcademyDetailTile(
            title: 'الرؤية الإخراجية والسينوغرافيا',
            description: 'توظيف الإضاءة، الديكور، والموسيقى لخدمة الفكرة الدرامية للنص.',
          ),
        ],
      ),
    );
  }
}

class ManagementScreen extends StatelessWidget {
  const ManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إدارة المسرح', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1F1F1F),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          AcademyDetailTile(
            title: 'إدارة خشبة المسرح (Stage Management)',
            description: 'تنظيم البروفات، إدارة الإشارات الفنية، والتنسيق بين طاقم العمل.',
          ),
          AcademyDetailTile(
            title: 'الإنتاج وإدارة الكواليس',
            description: 'تجهيز المتطلبات اللوجستية، إدارة الوقت، والتعامل مع الطوارئ العرضية.',
          ),
        ],
      ),
    );
  }
}

class AcademyDetailTile extends StatelessWidget {
  final String title;
  final String description;

  const AcademyDetailTile({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1E1E1E),
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        subtitle: Text(description, style: const TextStyle(color: Colors.white60)),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.deepPurpleAccent, size: 16),
      ),
    );
  }
}
