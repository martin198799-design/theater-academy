import 'package:flutter/material.dart';
import 'play_library_screen.dart';
import 'directing_screen.dart';
import 'acting_screen.dart';
import 'decor_screen.dart';
import 'scenography_screen.dart';
import 'costumes_screen.dart';
import 'lighting_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> sections = [
      {
        'title': 'مكتبة النصوص المسرحية',
        'subtitle': 'نصوص عالمية ومحلية كاملة ومترجمة بأعلى بلاغة',
        'icon': Icons.menu_book_rounded,
        'color': Colors.red,
        'screen': const PlayLibraryScreen(),
      },
      {
        'title': 'الإخراج المسرحي',
        'subtitle': 'مدارس الإخراج، ستانسلافسكي، بريخت، وأرتو',
        'icon': Icons.movie_filter_rounded,
        'color': Colors.blue,
        'screen': const DirectingScreen(),
      },
      {
        'title': 'فن التمثيل',
        'subtitle': 'إعداد الممثل، الارتجال، الصوت، والذاكرة الانفعالية',
        'icon': Icons.theater_comedy_rounded,
        'color': Colors.purple,
        'screen': const ActingScreen(),
      },
      {
        'title': 'الديكور المسرحي',
        'subtitle': 'هندسة الفضاء المسرحي، الكتلة، والوظيفة الدرامية',
        'icon': Icons.chair_rounded,
        'color': Colors.pink,
        'screen': const DecorScreen(),
      },
      {
        'title': 'السينوغرافيا',
        'subtitle': 'فلسفة الفضاء الشامل والتصميم الرقمي المعاصر',
        'icon': Icons.architecture_rounded,
        'color': Colors.teal,
        'screen': const ScenographyScreen(),
      },
      {
        'title': 'الأزياء المسرحية',
        'subtitle': 'دلالات الألوان، الهوية الاجتماعية، وتاريخ الزي',
        'icon': Icons.checkroom_rounded,
        'color': Colors.deepOrange,
        'screen': const CostumesScreen(),
      },
      {
        'title': 'الإضاءة المسرحية',
        'subtitle': 'دراماتورجيا الضوء والظل وتوزيع الكتل الضوئية',
        'icon': Icons.lightbulb_rounded,
        'color': Colors.amber,
        'screen': const LightingScreen(),
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          'أكاديمية خشبة المسرح',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepPurple.shade900, const Color(0xFF1E1E1E)],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.deepPurple.shade400.withOpacity(0.3), width: 1.5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'مرحباً بك في عالم الفن السابع والرابع',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 8),
                Text(
                  'الموسوعة الأكاديمية الشاملة المكونة من الأقسام السبعة الكبرى للمسرح.',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                    height: 1.4,
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ),
          ...sections.map((section) {
            final Color color = section['color'];
            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: color.withOpacity(0.4), width: 1.5),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => section['screen'],
                    ),
                  );
                },
                leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(section['icon'], color: color, size: 28),
                ),
                title: Text(
                  section['title'],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(
                    section['subtitle'],
                    style: const TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                      height: 1.3,
                    ),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                  ),
                ),
                trailing: Icon(Icons.arrow_back_ios_rounded, color: color.withOpacity(0.7), size: 16),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
