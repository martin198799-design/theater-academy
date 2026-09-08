import 'package:flutter/material.dart';

class TopicDetailScreen extends StatelessWidget {
  final String title;
  final String description;
  final String category;
  final Color themeColor;

  const TopicDetailScreen({
    super.key,
    required this.title,
    required this.description,
    required this.category,
    required this.themeColor,
  });

  @override
  Widget build(BuildContext context) {
    // التحقق مما إذا كان القسم تابعاً لمكتبة النصوص المسرحية لعرض النص أو الدراسات المتخصصة
    bool isTextsSection = category.contains('الدرامي') || 
                          category.contains('التراث المسرحي') || 
                          category.contains('المسرح العربي') || 
                          category.contains('الكتابة التأليفية');

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          textDirection: TextDirection.rtl,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: themeColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: themeColor.withOpacity(0.5)),
              ),
              child: Text(
                category,
                style: TextStyle(color: themeColor, fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textDirection: TextDirection.rtl,
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white10),
              ),
              child: Text(
                description,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                  height: 1.6,
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              isTextsSection ? 'النص المسرحي والمشاهد التمثلية:' : 'دراسة وتحليل تخصصي:',
              style: const TextStyle(
                color: Colors.amber,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textDirection: TextDirection.rtl,
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: themeColor.withOpacity(0.3)),
              ),
              child: Text(
                isTextsSection 
                  ? 'مشهد (1):\n[تفتح الأجواء على فضاء مسرحي تكسوه العتمة، وتتسلل إضاءة خافتة من الجانب لتكشف عن ملامح الشخصية وهي تواجه أزمة الاختيار المصيري]\n\nالشخصية: (بارتباك وعمق داخلي) هل هي النهاية أم مجرد بداية لفصل آخر لم يُكتب بعد؟ الأوراق تتناثر، والصوت يعلو في القاعة الخاوية...\n\n[إرشادات مسرحية: تتحرك الشخصية ببطء نحو بؤرة الضوء، وتصمت الموسيقى تدريجياً لتعميق الإحساس بالدراما].'
                  : 'تحليل أكاديمي وتطبيقي:\n• الأبعاد الفنية: يركز هذا المحور على تفكيك العناصر البصرية والسمعية لإنتاج دلالات عميقة فوق الخشبة.\n• التصور الإخراجي والسينوغرافي: دراسة حركة الكتلة وتناغم الإضاءة مع الأداء التمثيلي.\n• رؤية مقترحة: تصميم وتشكيل الفضاء بما يخدم الصراع الدرامي الداخلي للشخصيات ويضمن إيصال الرسالة الجمالية للمتلقي.',
                style: const TextStyle(
                  color: Colors.white60,
                  fontSize: 14,
                  height: 1.7,
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
            const SizedBox(height: 20),
            // قسم تفاعلي للمحتوى البصري والتصاميم المقترحة
            if (!isTextsSection) ...[
              const Text(
                'مقترحات بصرية وعروض مرئية:',
                style: TextStyle(
                  color: Colors.cyanAccent,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: 12),
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: themeColor.withOpacity(0.4)),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.video_collection_rounded, color: themeColor, size: 40),
                      const SizedBox(height: 8),
                      const Text(
                        'مقطع مرئي ومخطط تنفيذي مقترح من التصميم',
                        style: TextStyle(color: Colors.white54, fontSize: 13),
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
