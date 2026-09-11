import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A0505),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A120E),
        title: const Text(
          "المعرض والأرشيف السمعي البصري",
          style: TextStyle(color: Color(0xFFF3E5AB), fontSize: 20),
        ),
        iconTheme: const IconThemeData(color: Color(0xFFD4AF37)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // قسم المشاعر المسرحية
            const Text(
              "أولاً: المشاعر والأداء المسرحي",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFD4AF37),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildArtCard("أداء حزين", "إضاءة زرقاء خافتة ودمعة مسرحية", Icons.water_drop),
                  _buildArtCard("أداء سعيد", "إضاءة ذهبية وابتسامة حماسية", Icons.sentiment_very_satisfied),
                  _buildArtCard("أداء عصبي", "إضاءة حمراء وقبضة مشدودة", Icons.flash_on),
                  _buildArtCard("أداء منكسر", "إنارة باهتة على حافة المسرح", Icons.nightlight_round),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // قسم كواليس الديكور والإضاءة
            const Text(
              "ثانياً: كواليس الديكور والإضاءة",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFD4AF37),
              ),
            ),
            const SizedBox(height: 12),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.3,
              children: [
                _buildGridItem("ديكورات بابلية", Icons.account_balance),
                _buildGridItem("إضاءة Spotlights", Icons.lightbulb),
                _buildGridItem("تخطيط هندسي (Blueprint)", Icons.architecture),
                _buildGridItem("مشاهد مرئية وفيديوهات", Icons.video_library),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildArtCard(String title, String subtitle, IconData icon) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF2C0B08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.4)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48, color: const Color(0xFFD4AF37)),
          const SizedBox(height: 15),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.white60, fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(String title, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF2C0B08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.3)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 36, color: const Color(0xFFF3E5AB)),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
