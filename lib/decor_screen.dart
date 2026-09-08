import 'package:flutter/material.dart';
import 'topic_detail_screen.dart';

class DecorScreen extends StatelessWidget {
  const DecorScreen({super.key});

  final List<Map<String, String>> decorTopics = const [
    {
      'title': 'هندسة الفضاء المسرحي والكتلة',
      'description': 'كيف يشكل الديكور الفضاء البصري ويوجه عين المتلقي نحو مركز الحدث الدرامي.',
      'category': 'الديكور المسرحي',
      'detailedContent': 'يمثل الديكور المسرحي الفضاء الفيزيائي الذي يتحرك ضمنه الممثلون. لا يُقاس نجاح الديكور بمدى فخامته بل بمدى وظيفته الدرامية وتعبيره عن الصراع الداخلي للشخصيات، حيث تتعاضد الكتل والخطوط والألوان لتشكل بيئة متكاملة تخدم الفكرة الإخراجية.'
    },
    {
      'title': 'التشكيل البصري والوظيفة الدرامية',
      'description': 'العلاقة التبادلية بين الممثل والفضاء المحيط به على الخشبة.',
      'category': 'التصميم المعماري',
      'detailedContent': 'يتعامل مصمم الديكور مع الخشبة كمساحة حية ومتحركة، حيث تحولت المدارس الحديثة من الديكور الواقعي التجسيدي إلى الديكور الرمزي والإيحائي الذي يمنح المخرج حرية أكبر في التنقل وتوظيف التكوينات الفضائية.'
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
                    themeColor: Colors.pink,
                    isPlayText: false,
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
            ),
          );
        },
      ),
    );
  }
}
