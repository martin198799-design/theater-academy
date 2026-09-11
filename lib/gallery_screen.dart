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
              "أرشيف التوثيق البصري، المرئي والمشاعري المسرحي",
              style: TextStyle(
                color: Color(0xFFD4AF37),
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            
            const Text(
              "أولاً: مقاطع الفيديو والتجارب الإخراجية الحية",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF3E5AB),
              ),
            ),
            const SizedBox(height: 12),
            
            _buildVideoCard(
              context,
              "مشهد تجريبي: مأساة الحزن والنجوى",
              "توظيف إضاءة الأزرق الخافت مع عزف الناي الحزين على الخشبة.",
              Icons.play_circle_fill,
            ),
            const SizedBox(height: 10),
            _buildVideoCard(
              context,
              "كواليس تحضير الديكور والكتل البابلية",
              "توثيق مرئي لعملية بناء الفضاء المسرحي وتوزيع الإضاءة الفراغية.",
              Icons.video_collection,
            ),
            const SizedBox(height: 24),

            const Text(
              "ثانياً: أرشيف المشاعر والأداء التعبيري",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF3E5AB),
              ),
            ),
            const SizedBox(height: 12),
            
            // تحويل البطاقات إلى عمود متكامل وواضح لتجنب اختفاء النصوص
            _buildVerticalEmotionCard("الحزن والنجوى", Icons.water_drop, "إضاءة زرقاء خافتة + نغمات الناي والعود الحزينة للتعبير عن مأساة الشخصية."),
            const SizedBox(height: 10),
            _buildVerticalEmotionCard("السعادة والنشوة", Icons.sentiment_very_satisfied, "إضاءة ذهبية ساطعة + حركة جسدية حماسية منفتحة تعكس لحظات التحرر."),
            const SizedBox(height: 10),
            _buildVerticalEmotionCard("العصبية والصراع", Icons.flash_on, "إضاءة حمراء حادة + قبضة يد مشدودة توحي بذروة التوتر واصطدام الإرادات."),
            const SizedBox(height: 10),
            _buildVerticalEmotionCard("الانكسار والتلاشي", Icons.nightlight_round, "إنارة باهتة على حافة المسرح + ظل طويل ومنحني لسقوط البطل داخلياً."),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoCard(BuildContext context, String title, String subtitle, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF2C0B08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.5)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF4A120E),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 30, color: const Color(0xFFD4AF37)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Color(0xFFF3E5AB), fontWeight: FontWeight.bold, fontSize: 13),
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.white70, fontSize: 11, height: 1.3),
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVerticalEmotionCard(String title, IconData icon, String desc) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF2C0B08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.4)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 24, color: const Color(0xFFD4AF37)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Color(0xFFF3E5AB), fontWeight: FontWeight.bold, fontSize: 14),
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(height: 6),
                Text(
                  desc,
                  style: const TextStyle(color: Colors.white70, fontSize: 12, height: 1.4),
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
