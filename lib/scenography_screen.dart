import 'package:flutter/material.dart';
import 'topic_detail_screen.dart';

class ScenographyScreen extends StatelessWidget {
  const ScenographyScreen({super.key});

  final List<Map<String, String>> scenographyTopics = const [
    {
      'title': 'فلسفة الفضاء المسرحي الشامل',
      'description': 'توحيد كافة العناصر البصرية والسمعية في بنية تشكيلية واحدة متكاملة.',
      'category': 'الفلسفة والنظرية',
      'detailedContent': 'مفهوم السينوغرافيا الشاملة:\n• توحيد الرؤية: تذوب الحدود الفاصلة بين الديكور والإضاءة والأزياء لتصبح لغة بصرية واحدة.\n• الشراكة الحية: السينوغرافيا ليست خلفية ثابتة بل هي كائن حي يتفاعل مع الممثل والحدث.'
    },
    {
      'title': 'السينوغرافيا الرقمية والمعاصرة',
      'description': 'دمج الإسقاطات الضوئية التقنية والتصميم الرقمي في الفضاء المسرحي الحديث.',
      'category': 'التقنيات الحديثة',
      'detailedContent': 'التقنيات المعاصرة في العرض:\n• الجرافيك والإسقاط الضوئي (Projection Mapping): تحويل السطوح المسرحية إلى شاشات تفاعلية ديناميكية.\n• الفضاء الافتراضي: دمج العناصر الرقمية مع الواقع المادي لخلق آفاق بصرية غير تقليدية.'
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
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicDetailScreen(
                    title: topic['title']!,
                    description: topic['description']!,
                    category: topic['category']!,
                    detailedContent: topic['detailedContent']!,
                    themeColor: Colors.teal,
                  ),
                ),
              );
            },
            borderRadius: BorderRadius.circular(16),
            child: Container(
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
            ),
          );
        },
      ),
    );
  }
}
