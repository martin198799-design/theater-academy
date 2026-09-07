import 'package:flutter/material.dart';

class DecorScreen extends StatelessWidget {
  const DecorScreen({super.key});

  final List<Map<String, String>> decorTopics = const [
    {
      'title': 'تصميم المنظر المسرحي (Set Design)',
      'description': 'الأسس الهندسية والبصرية لتشكيل الفضاء المسرحي بما يخدم الرؤية الإخراجية.',
      'category': 'الأسس الهندسية'
    },
    {
      'title': 'المسرح الواقعي والتسجيلي',
      'description': 'إعادة بناء الواقع بدقة على الخشبة لنقل بيئة الأحداث بتفاصيلها المعمارية.',
      'category': 'المدارس الواقعية'
    },
    {
      'title': 'الديكور التعبيري والرمزى',
      'description': 'الاستغناء عن التفاصيل الزائدة والتركيز على قطع دلالية تحمل أبعاداً نفسية وفلسفية.',
      'category': 'الاتجاهات الحديثة'
    },
    {
      'title': 'الكتل المتحركة وأنظمة التغيير السريع',
      'description': 'تقنيات استخدام البانوراما، العربات المتحركة، والديكور الدوار لتغيير المشاهد بسلاسة.',
      'category': 'التقنيات التنفيذية'
    },
    {
      'title': 'الخامات والخدع البصرية المسرحية',
      'description': 'توظيف مواد البناء الخفيفة (الخشب، الفوم، الأقمشة المعالجة) لخلق إيحاءات مادية خادعة.',
      'category': 'الورش والتقنيات'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          'الديكور المسرحي',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: decorTopics.length,
        itemBuilder: (context, index) {
          final topic = decorTopics[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: const Color(0xFF1E1E1E),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.pink.shade700.withOpacity(0.4), width: 1.5),
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
                          color: Colors.pink.shade900.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          topic['category']!,
                          style: TextStyle(color: Colors.pink.shade300, fontSize: 11),
                        ),
                      ),
                      Icon(Icons.chair_rounded, color: Colors.pink.shade400, size: 22),
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
