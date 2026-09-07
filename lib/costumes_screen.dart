import 'package:flutter/material.dart';
import 'topic_detail_screen.dart';

class CostumesScreen extends StatelessWidget {
  const CostumesScreen({super.key});

  final List<Map<String, String>> costumesTopics = const [
    {
      'title': 'دلالات الألوان وتوظيفها النفسي',
      'description': 'كيف يعكس لون وزي الشخصية حالتها النفسية وتطورها الصراعي في العرض.',
      'category': 'الدلالات النفسية'
    },
    {
      'title': 'تاريخ الأزياء المسرحية عبر العصور',
      'description': 'من أزياء المسرح الإغريقي والروماني إلى الأزياء الكلاسيكية والمعاصرة.',
      'category': 'التاريخ المسرحي'
    },
    {
      'title': 'تصميم الأزياء كجزء من الشخصية',
      'description': 'التعاون بين المخرج ومصمم الأزياء لتعميق البعد الدرامي للممثل.',
      'category': 'الأسس الإبداعية'
    },
    {
      'title': 'التقنيات التنفيذية وخامات الأقمشة',
      'description': 'دراسة حركة القماش، إضاءة المسرح وتأثيرها على انعكاسات الألوان.',
      'category': 'التنفيذ والتقنية'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          'الأزياء المسرحية',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: costumesTopics.length,
        itemBuilder: (context, index) {
          final topic = costumesTopics[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicDetailScreen(
                    title: topic['title']!,
                    description: topic['description']!,
                    category: topic['category']!,
                    themeColor: Colors.deepOrange,
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
                border: Border.all(color: Colors.deepOrange.shade700.withOpacity(0.4), width: 1.5),
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
                            color: Colors.deepOrange.shade900.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            topic['category']!,
                            style: TextStyle(color: Colors.deepOrange.shade300, fontSize: 11),
                          ),
                        ),
                        Icon(Icons.checkroom_rounded, color: Colors.deepOrange.shade400, size: 22),
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
