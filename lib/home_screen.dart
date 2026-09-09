import 'package:flutter/material.dart';
import 'texts_library_screen.dart';
import 'directing_screen.dart';
import 'acting_screen.dart';
import 'lighting_screen.dart';
import 'costumes_screen.dart';
import 'decor_screen.dart';
import 'scenography_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أكاديمية خشبة المسرح'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: [
            _buildNavCard(
              context,
              title: 'مكتبة النصوص',
              icon: Icons.menu_book,
              color: Colors.deepPurple,
              destination: const TextsLibraryScreen(),
            ),
            _buildNavCard(
              context,
              title: 'قسم الإخراج',
              icon: Icons.movie_creation,
              color: Colors.indigo,
              destination: const DirectingScreen(),
            ),
            _buildNavCard(
              context,
              title: 'فن التمثيل',
              icon: Icons.theater_comedy,
              color: Colors.teal,
              destination: const ActingScreen(),
            ),
            _buildNavCard(
              context,
              title: 'الإضاءة المسرحية',
              icon: Icons.lightbulb,
              color: Colors.amber.shade800,
              destination: const LightingScreen(),
            ),
            _buildNavCard(
              context,
              title: 'الأزياء المسرحية',
              icon: Icons.checkroom,
              color: Colors.pink,
              destination: const CostumesScreen(),
            ),
            _buildNavCard(
              context,
              title: 'الديكور المسرحي',
              icon: Icons.home_work,
              color: Colors.brown,
              destination: const DecorScreen(),
            ),
            _buildNavCard(
              context,
              title: 'السينوغرافيا',
              icon: Icons.design_services,
              color: Colors.blueGrey,
              destination: const ScenographyScreen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavCard(BuildContext context, {required String title, required IconData icon, required Color color, required Widget destination}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48, color: color),
              const SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
