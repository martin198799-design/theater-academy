import 'package:flutter/material.dart';

class DirectingScreen extends StatelessWidget {
  const DirectingScreen({super.key});

  final List<Map<String, String>> directingTopics = const [
    {
      'title': 'رؤية المخرج وتحليل النص',
      'description': 'كيفية تفكيك النص المسرحي واستنباط الجوهر الفكري والجمالي للعرض.',
      'category': 'الأسس التأسيسية'
    },
    {
      'title': 'المدارس الإخراجية الكبرى',
      'description': 'من مسرح الممثل التقليدي إلى المسرح الملحمي (بريخت) والفقير (جروتوفسكي).',
      'category': 'المدارس والاتجاهات'
    },
    {
      'title': 'التكوين البصري وتشكيل الحركة (Blocking)',
      'description': 'فلسفة توزيع الممثلين في الفضاء المسرحي، الخطوط والحركات الإيحائية.',
      'category': 'التقنيات التطبيقية'
    },
    {
      'title': 'دراماتورجيا العرض المسرحي',
      'description': 'إعادة صياغة النص وبناء البنية الدرامية المرئية والمسموعة فوق الخشبة.',
      'category': 'الدراسات المتقدمة'
    },
    {
      'title': 'إدارة الممثل وبروفات الطاولة',
      'description': 'سيكولوجية التعامل مع الممثل، استخراج طاقاته، وتوجيه الأداء الداخلي والخارجي.',
      'category': 'الممارسات العملية'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          'الإخراج المسرحي',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: directingTopics.length,
        itemBuilder: (context, index) {
          final topic = directingTopics[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: const Color(0xFF1E1E1E),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.blue.shade700.withOpacity(0.4), width: 1.5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade900.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          topic['category']!,
                          style: TextStyle(color: Colors.blue.shade300, fontSize: 11),
                        ),
                      ),
                      Icon(Icons.movie_filter_rounded, color: Colors.blue.shade400, size: 22),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    topic['title']!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    topic['description']!,
                    style: const TextStyle(
                      color: Colors.white54,
                      fontSize: 13,
                      height: 1.4,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
