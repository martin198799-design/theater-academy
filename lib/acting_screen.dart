import 'package:flutter/material.dart';
import 'topic_detail_screen.dart';

class ActingScreen extends StatelessWidget {
  const ActingScreen({super.key});

  final List<Map<String, String>> actingTopics = const [
    {
      'title': 'إعداد الممثل الجسدي والصوتي',
      'description': 'تمارين اللياقة المرنة، الإلقاء، التنفس، وإدارة الطاقة الصوتية فوق الخشبة.',
      'category': 'الأسس الأدائية'
    },
    {
      'title': 'مدرسة الذاكرة الانفعالية (ستانيسلافسكي)',
      'description': 'استدعاء التجارب الشخصية الصادقة لخلق انفعالات حقيقية ومقنعة للشخصية.',
      'category': 'المدارس الفنية'
    },
    {
      'title': 'التفاعل الجسدي مع فضاء المسرح',
      'description': 'استكشاف الأبعاد المكانية، التعامل مع الديكور، وتوزيع طاقة الحركة الجسدية.',
      'category': 'الفضاء والحركة'
    },
    {
      'title': 'بناء المشهد المزدوج والتفاعل الجماعي',
      'description': 'التناغم مع الممثلين المشاركين، بناء الإيقاع المشترك، وردود الفعل العضوية.',
      'category': 'الورش التطبيقية'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          'فن التمثيل',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: actingTopics.length,
        itemBuilder: (context, index) {
          final topic = actingTopics[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicDetailScreen(
                    title: topic['title']!,
                    description: topic['description']!,
                    category: topic['category']!,
                    themeColor: Colors.purple,
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
                border: Border.all(color: Colors.purple.shade700.withOpacity(0.4), width: 1.5),
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
                            color: Colors.purple.shade900.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            topic['category']!,
                            style: TextStyle(color: Colors.purple.shade300, fontSize: 11),
                          ),
                        ),
                        Icon(Icons.theater_comedy_rounded, color: Colors.purple.shade400, size: 22),
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
