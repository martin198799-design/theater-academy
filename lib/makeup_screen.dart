import 'package:flutter/material.dart';

class MakeupScreen extends StatelessWidget {
  const MakeupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A0505),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A120E),
        title: const Text(
          "مكياج المسرح",
          style: TextStyle(color: Color(0xFFF3E5AB), fontSize: 18, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(color: Color(0xFFD4AF37)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.rtl,
          children: [
            const Text(
              "هندسة التجسيد البصري والنفسي للشخصية",
              style: TextStyle(
                color: Color(0xFFD4AF37),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textDirection: TextDirection.rtl,
            ),
            const SizedBox(height: 14),
            const Text(
              "يُعرّف مكياج المسرح بأنه الفن الذي يوظف أدوات التلوين والتظليل لتعديل ملامح وجه الممثل وجسده، بهدف خلق توافق تام بين الشكل الخارجي والبعد النفسي والدرامي للشخصية المرسومة على الخشبة. وهو يختلف جوهرياً عن مكياج التجميل العادي؛ إذ يُصمم خصيصاً ليتحمل المسافات الفاصلة بين الجمهور والممثل، وليتفاعل بوعي مع قسوة الإضاءة المسرحية وحِدّتها.",
              style: TextStyle(color: Colors.white70, fontSize: 13, height: 1.5),
              textDirection: TextDirection.rtl,
            ),
            const SizedBox(height: 20),

            _buildSectionTitle("أولاً: أبعاد ووظائف مكياج المسرح"),
            const SizedBox(height: 8),
            _buildBulletPoint("البعد النفسي والدرامي: يُترجم الصراعات الداخلية للشخصية، كالانكسار، أو القسوة، أو التوتر العصبي، عبر استخدام خطوط وتدرجات لونيّة توحي بحالة البطل النفسية."),
            _buildBulletPoint("البعد البيئي والزمكاني: يعكس البيئة الاجتماعية والزمنية للشخصية، موضحاً آثار التقدم في العمر، أو إرهاق السفر، أو ظروف القسوة والفقر والمعاناة."),
            _buildBulletPoint("موازنة تأثير الإضاءة: يعوض شحوب الوجه الناتج عن انعكاسات الإضاءة الكاشفة (Spotlights) والفلترات اللونية الحادة، معيداً إبراز ملامح التعبير الأساسية للممثل بوضوح."),
            
            const SizedBox(height: 20),
            _buildSectionTitle("ثانياً: أنواع وتقنيات المكياج المسرحي"),
            const SizedBox(height: 8),
            _buildBulletPoint("المكياج الواقعي (Realistic Makeup): يركز على إبراز الملامح الطبيعية أو تعديلها بدقة لتناسب عمر الشخصية وحالتها الصحية دون مبالغة، مثل إظهار التجاعيد الدقيقة للشيخوخة."),
            _buildBulletPoint("المكياج التعبيري أو الرمزي (Expressive/Stylized Makeup): يعتمد على المبالغة المتعمدة في إبراز ملامح معينة أو استخدام رموز لونية مجردة، وغالباً ما يُستخدم في المسرح التجريبي أو مسرح العبث."),
            _buildBulletPoint("مكياج الخصائص والتشويه (Character/Transformation Makeup): يهدف إلى إحداث تغيير جذري في ملامح الممثل عبر بناء كتل صناعية أو رسم ندوب، لتحويله بالكامل إلى شخصية درامية مختلفة."),

            const SizedBox(height: 20),
            _buildSectionTitle("ثالثاً: هندسة الظل والضوء (Contouring & Highlighting)"),
            const SizedBox(height: 8),
            _buildBulletPoint("التظليل (Shadowing): استخدام الألوان الداكنة لإخفاء بعض العيوب، أو إغوار العينين، أو إبراز النحافة والتقدم في العمر."),
            _buildBulletPoint("الإضاءة والبروز (Highlighting): استخدام الألوان الفاتحة لتسليط الضوء على عظام الوجنتين، الجبهة، أو عظمة الأنف، مما يمنح الوجه حيوية وثلاثية أبعاد تحت الظلام المسرحي."),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Color(0xFFF3E5AB),
      ),
      textDirection: TextDirection.rtl,
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white70, fontSize: 12.5, height: 1.4),
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
