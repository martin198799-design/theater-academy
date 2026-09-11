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
            
            // بطاقات المشاعر الأفقية مع محتوى غني وواضح
            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildRichCard(
                    "الحزن والنجوى",
                    Icons.water_drop,
                    "• الإضاءة: زرقاء خافتة.\n• الصوت: نغمات الناي والعود الحزينة.\n• التعبير: تعبير عن مأساة الشخصية وعمقها الداخلي."
                  ),
                  _buildRichCard(
                    "السعادة والنشوة",
                    Icons.sentiment_very_satisfied,
                    "• الإضاءة: ذهبية ساطعة.\n• الحركة: حركة جسدية حماسية منفتحة.\n• التعبير: انعكاس لحظات التحرر والانتصار."
                  ),
                  _buildRichCard(
                    "العصبية والصراع",
                    Icons.flash_on,
                    "• الإضاءة: حمراء حادة.\n• الحركة: قبضة يد مشدودة.\n• التعبير: ذروة التوتر الدرامي واصطدام الإرادات."
                  ),
                  _buildRichCard(
                    "الانكسار والتلاشي",
                    Icons.nightlight_round,
                    "• الإضاءة: إنارة باهتة على الحافة.\n• الشكل: ظل طويل ومنحني.\n• التعبير: سقوط الدراما الداخلية للبطل."
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
            
            // شبكة الكواليس بمحتوى تفصيلي كامل
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.95,
              children: [
                _buildGridCard(
                  "ديكورات بابلية",
                  Icons.account_balance,
                  "توظيف العمارة الرمزية والتاريخية لخلق عمق بصري درامي مستوحى من حضارة بابل."
                ),
                _buildGridCard(
                  "توزيع Spotlights",
                  Icons.lightbulb,
                  "هندسة الظل والضوء لتوجيه عين المتفرج نحو بؤرة الصراع الأساسية على الخشبة."
                ),
                _buildGridCard(
                  "المخططات الهندسية",
                  Icons.architecture,
                  "تخطيط الفضاء المسرحي (Blueprints) بدقة لتوزيع الممثلين والكتل بكفاءة."
                ),
                _buildGridCard(
                  "الأرشيف المرئي",
                  Icons.video_library,
                  "توثيق مقاطع الفيديو، التدريبات الحية، والتجارب الإخراجية والأدائية السابقة."
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRichCard(String title, IconData icon, String content) {
    return Container(
      width: 220,
      margin: const EdgeInsets.only(right: 14),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF2C0B08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.5)),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 22, color: const Color(0xFFD4AF37)),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(color: Color(0xFFF3E5AB), fontWeight: FontWeight.bold, fontSize: 13),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            ),
            const Divider(color: Color(0xFFD4AF37), height: 16),
            Text(
              content,
              style: const TextStyle(color: Colors.white70, fontSize: 11, height: 1.4),
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridCard(String title, IconData icon, String description) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF2C0B08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.4)),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 26, color: const Color(0xFFF3E5AB)),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(color: Color(0xFFF3E5AB), fontSize: 13, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
            const SizedBox(height: 6),
            Text(
              description,
              style: const TextStyle(color: Colors.white70, fontSize: 11, height: 1.3),
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}
