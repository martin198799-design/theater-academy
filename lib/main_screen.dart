import 'package:flutter/material.dart';
import 'texts_library_screen.dart';
import 'directing_screen.dart';
import 'acting_screen.dart';
import 'decor_screen.dart';
import 'scenography_screen.dart';
import 'costumes_screen.dart';
import 'lighting_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          'أكاديمية المسرح',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'اختر القسم الأكاديمي',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: 12),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.05,
                  children: [
                    _buildAcademyCard(
                      title: 'مكتبة النصوص',
                      subtitle: '100 نص عالمي عبر العصور',
                      icon: Icons.menu_book_rounded,
                      color: Colors.amber.shade800,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TextsLibraryScreen(),
                          ),
                        );
                      },
                    ),
                    _buildAcademyCard(
                      title: 'الإخراج المسرحي',
                      subtitle: 'الأنواع، المدارس، والمبادئ',
                      icon: Icons.movie_filter_rounded,
                      color: Colors.blue.shade700,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DirectingScreen(),
                          ),
                        );
                      },
                    ),
                    _buildAcademyCard(
                      title: 'فن التمثيل',
                      subtitle: 'الأدوات، الفضاء، والمشاهد',
                      icon: Icons.theater_comedy_rounded,
                      color: Colors.purple.shade700,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ActingScreen(),
                          ),
                        );
                      },
                    ),
                    _buildAcademyCard(
                      title: 'الديكور المسرحي',
                      subtitle: 'التصميم والتشكيل البصري',
                      icon: Icons.chair_rounded,
                      color: Colors.pink.shade700,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DecorScreen(),
                          ),
                        );
                      },
                    ),
                    _buildAcademyCard(
                      title: 'السينوغرافيا',
                      subtitle: 'فلسفة الفضاء والدراسات',
                      icon: Icons.architecture_rounded,
                      color: Colors.teal.shade700,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScenographyScreen(),
                          ),
                        );
                      },
                    ),
                    _buildAcademyCard(
                      title: 'الأزياء المسرحية',
                      subtitle: 'من اليونان حتى اليوم',
                      icon: Icons.checkroom_rounded,
                      color: Colors.deepOrange.shade700,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CostumesScreen(),
                          ),
                        );
                      },
                    ),
                    _buildAcademyCard(
                      title: 'الإضاءة المسرحية',
                      subtitle: 'الفلسفة وأنواع الكشافات',
                      icon: Icons.lightbulb_rounded,
                      color: Colors.indigo.shade700,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LightingScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAcademyCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color.withOpacity(0.4), width: 1.5),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(icon, color: color, size: 30),
            const Spacer(),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              textDirection: TextDirection.rtl,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 11,
              ),
              textDirection: TextDirection.rtl,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
