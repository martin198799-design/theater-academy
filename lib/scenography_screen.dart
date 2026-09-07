import 'package:flutter/material.dart';

class ScenographyScreen extends StatelessWidget {
  const ScenographyScreen({super.key});

  final List<Map<String, String>> scenographyTopics = const [
    {
      'title': 'فلسفة الفضاء المسرحي',
      'description': 'كيف تتحول المساحة الصامتة إلى فضاء درامي ينبض بالمعنى والدلالة.',
      'category': 'الفلسفة البصرية'
    },
    {
      'title': 'التأليف البصري وتكامل العناصر',
      'description': 'التناغم بين الديكور، الإضاءة، الأزياء، وكتلة الممثل داخل الفضاء.',
      'category': 'العناصر المتكاملة'
    },
    {
      'title': 'السينوغرافيا الرقمية والتفاعلية',
      'description': 'توظيف الإسقاط الضوئي (Projection Mapping) وتقنيات الميديا الحديثة.',
      'category': 'التقنيات الحديثة'
    },
    {
      'title': 'الفضاءات غير التقليدية (Found Space)',
      'description': 'العروض خارج خشبة المسرح التقليدية (المسرح البيئي والفقير).',
      'category': 'اتجاهات معاصرة'
    },
    {
      'title': 'رمزية الألوان والكتل الفراغية',
      'description': 'دلالات الأشكال الهندسية وتأثير التكوين الفراغي على نفسية المتلقي.',
      'category': 'علم الجمال'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          'السينوغرافيا',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: scenographyTopics.length,
        itemBuilder: (context, index) {
          final topic = scenographyTopics[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: const Color(0xFF1E1E1E),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.teal.shade700.withOpacity(0.4), width: 1.5),
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
                          color: Colors.teal.shade900.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          topic['category']!,
                          style: TextStyle(color: Colors.teal.shade300, fontSize: 11),
                        ),
                      ),
                      Icon(Icons.architecture_rounded, color: Colors.teal.shade400, size: 22),
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
