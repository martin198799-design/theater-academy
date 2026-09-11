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
          style: TextStyle(color: Color(0xFFF3E5AB), fontSize: 18, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(color: Color(0xFFD4AF37)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "أرشيف التوثيق البصري والمشاعري المسرحي",
              style: TextStyle(
                color: Color(0xFFD4AF37),
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            
            const Text(
              "أولاً: أرشيف المشاعر والأداء المسرحي",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF3E5AB),
              ),
            ),
            const SizedBox(height: 12),
            
            SizedBox(
              height: 240,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildDetailedArtCard(
                    "الحزن والنجوى",
                    "إضاءة زرقاء خافتة مع نغمات الناي والعود الحزينة.",
                    Icons.water_drop,
                    "تعبير عن مأساة الشخصية وعمقها الداخلي."
                  ),
                  _buildDetailedArtCard(
                    "السعادة والنشوة",
                    "إضاءة ذهبية ساطعة وحركة جسدية حماسية منفتحة.",
                    Icons.sentiment_very_satisfied,
                    "انعكاس لحظات التحرر والانتصار المؤقت."
                  ),
                  _buildDetailedArtCard(
                    "العصبية والصراع",
                    "إضاءة حمراء حادة وقبضة يد مشدودة توحي بالانفجار.",
                    Icons.flash_on,
                    "ذروة التوتر الدرامي واصطدام الإرادات."
                  ),
                  _buildDetailedArtCard(
                    "الانكسار والتلاشي",
                    "إنارة باهتة على حافة المسرح وظل طويل ومنحني.",
                    Icons.nightlight_round,
                    "سقوط الدراما الداخلية وانكسار البطل."
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            const Text(
              "ثانياً: كواليس الديكور والكتل الهندسية",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF3E5AB),
              ),
            ),
            const SizedBox(height: 12),
            
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.15,
              children: [
                _buildGridItem("ديكورات بابلية وتاريخية", "توظيف العمارة الرمزية", Icons.account_balance),
                _buildGridItem("توزيع إضاءة Spotlights", "هندسة الظل والضوء والعمق", Icons.lightbulb),
                _buildGridItem("المخططات الهندسية (Blueprints)", "تخطيط الفضاء المسرحي بدقة", Icons.architecture),
                _buildGridItem("الأرشيف السمعي والمرئي", "مقاطع فيديو وتجارب إخراجية", Icons.video_library),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailedArtCard(String title, String desc, IconData icon, String footer) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 14),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF2C0B08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 24, color: const Color(0xFFD4AF37)),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            desc,
            style: const TextStyle(color: Colors.white70, fontSize: 12),
            textDirection: TextDirection.rtl,
          ),
          const Spacer(),
          Text(
            footer,
            style: const TextStyle(color: Color(0xFFF3E5AB), fontSize: 11, fontStyle: FontStyle.italic),
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(String title, String subtitle, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF2C0B08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.3)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 28, color: const Color(0xFFF3E5AB)),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.white60, fontSize: 10),
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
