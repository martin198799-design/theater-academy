import 'package:flutter/material.dart';
import 'topic_detail_screen.dart';

class LightingScreen extends StatelessWidget {
  const LightingScreen({super.key});

  final List<Map<String, String>> lightingTopics = const [
    {
      'title': 'دراماتورجيا الإضاءة والظل',
      'description': 'كيف تحكي الإضاءة عن العواطف وتخلق الأبعاد النفسية والدرامية للمشهد.',
      'category': 'الأسس الجمالية',
      'detailedContent': 'فلسفة الضوء والظلال:\n• البعد النفسي: توظيف التباين الحاد بين الضوء والظلام للتعبير عن الصراع الداخلي والعزلة.\n• التوجيه البصري: قيادة عين المشاهد نحو مركز الحدث الدرامي عبر حزم ضوئية مركزة.'
    },
    {
      'title': 'توزيع الزوايا والكتل الضوئية',
      'description': 'استخدام الإضاءة الجانبية، العلوية، والخلفية لتشكيل الفضاء المسرحي.',
      'category': 'التقنيات والهندسة',
      'detailedContent': 'هندسة الزوايا الضوئية:\n• الإضاءة الجانبية: تبرز تفاصيل جسد الممثل وتمنح الحركة عمقاً تجسيدياً.\n• الإضاءة الخلفية (Backlight): تفصل الممثل عن خلفية الديكور وتخلق هالة بصرية ساحرة.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          'الإضاءة المسرحية',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: lightingTopics.length,
        itemBuilder: (context, index) {
          final topic = lightingTopics[index];
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
                    themeColor: Colors.amber,
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
                border: Border.all(color: Colors.amber.shade700.withOpacity(0.4), width: 1.5),
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
                            color: Colors.amber.shade900.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            topic['category']!,
                            style: TextStyle(color: Colors.amber.shade300, fontSize: 11),
                          ),
                        ),
                        Icon(Icons.lightbulb_rounded, color: Colors.amber.shade400, size: 22),
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
