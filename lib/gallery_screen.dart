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
            
            // القسم الأول: مشغلات الفيديو التفاعلية للتجارب المسرحية
            const Text(
              "أولاً: مقاطع الفيديو والتجارب الإخراجية الحية",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF3E5AB),
              ),
            ),
            const SizedBox(height: 12),
            
            // بطاقة فيديو تفاعلية تجريبية أولى
            _buildVideoPlayerCard(
              context,
              "مشهد تجريبي: مأساة الحزن والنجوى",
              "توظيف إضاءة الأزرق الخافت مع عزف الناي الحزين على الخشبة.",
              Icons.play_circle_fill,
            ),
            const SizedBox(height: 12),
            
            // بطاقة فيديو تفاعلية تجريبية ثانية
            _buildVideoPlayerCard(
              context,
              "كواليس تحضير الديكور والكتل البابلية",
              "توثيق مرئي لعملية بناء الفضاء المسرحي وتوزيع الإضاءة الفراغية.",
              Icons.video_collection,
            ),
            const SizedBox(height: 24),

            // القسم الثاني: أرشيف المشاعر والأداء الحركي
            const Text(
              "ثانياً: أرشيف المشاعر والأداء التعبيري",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF3E5AB),
              ),
            ),
            const SizedBox(height: 12),
            
            SizedBox(
              height: 210,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildEmotionCard("الحزن والنجوى", Icons.water_drop, "إضاءة زرقاء خافتة\n+ نغمات الناي والعود الحزينة."),
                  _buildEmotionCard("السعادة والنشوة", Icons.sentiment_very_satisfied, "إضاءة ذهبية ساطعة\n+ حركة جسدية حماسية منفتحة."),
                  _buildEmotionCard("العصبية والصراع", Icons.flash_on, "إضاءة حمراء حادة\n+ قبضة يد مشدودة توحي بالانفجار."),
                  _buildEmotionCard("الانكسار والتلاشي", Icons.nightlight_round, "إنارة باهتة على حافة المسرح\n+ ظل طويل ومنحني للبطل."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ودجت مشغل الفيديو التجريبي التفاعلي
  Widget _buildVideoPlayerCard(BuildContext context, String title, String subtitle, IconData icon) {
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
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFF4A120E),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 36, color: const Color(0xFFD4AF37)),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Color(0xFFF3E5AB), fontWeight: FontWeight.bold, fontSize: 14),
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
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios, color: Color(0xFFD4AF37), size: 16),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("جاري تشغيل المعاينة المرئية للمشهد المسرحي...", textDirection: TextDirection.rtl),
                  backgroundColor: Color(0xFF4A120E),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  // ودجت بطاقة المشاعر الأفقية
  Widget _buildEmotionCard(String title, IconData icon, String desc) {
    return Container(
      width: 190,
      margin: const EdgeInsets.only(right: 14),
      padding: const EdgeInsets.all(12),
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
            desc,
            style: const TextStyle(color: Colors.white70, fontSize: 11, height: 1.4),
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
