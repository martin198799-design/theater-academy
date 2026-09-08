import 'package:flutter/material.dart';
import 'topic_detail_screen.dart';

class LightingScreen extends StatelessWidget {
  const LightingScreen({super.key});

  final List<Map<String, String>> lightingTopics = const [
    {
      'title': 'دراماتورجيا الضوء وتوزيع الكتل الضوئية',
      'description': 'كيف تؤثر الإضاءة في توجيه عاطفة المتلقي وإبراز البعد النفسي للحدث.',
      'category': 'الإضاءة المسرحية',
      'detailedContent': 'لا تقتصر الإضاءة المسرحية على مجرد الإنارة لرؤية الممثلين، بل تشكل عنصراً درامياً قائماً بذاته (دراماتورجيا الضوء). يتحكم مصمم الإضاءة في زوايا السقوط، والشدة، وتدرجات الألوان ليخلق أبعاداً نفسية، ويعبر عن الزمن والتحولات الدرامية داخل الفضاء المسرحي.'
    },
    {
      'title': 'الظل والتشكيل الفضائي المعاصر',
      'description': 'استخدام التباينات الضوئية (Chiaroscuro) في صناعة المشهدية البصرية.',
      'category': 'التصميم الضوئي',
      'detailedContent': 'يعتمد المسرح الحديث بشكل مكثف على فن التباين بين النور والظلال لخلق عمق بصري يغني عن الديكورات الضخمة، حيث يوجه الضوء انتباه المتفرج نحو بؤرة الصراع الأساسية على الخشبة.'
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
