import 'package:flutter/material.dart';
import 'topic_detail_screen.dart';

class CostumesScreen extends StatelessWidget {
  const CostumesScreen({super.key});

  final List<Map<String, String>> costumesTopics = const [
    {
      'title': 'علم نفس الألوان ودلالات الأزياء المسرحية',
      'description': 'كيف تعكس الأزياء البعد الاجتماعي، النفسي، والطبقي للشخصية المسرحية.',
      'category': 'الأزياء والمكياج',
      'detailedContent': 'الأزياء المسرحية ليست مجرد ملابس نرتديها على الخشبة، بل هي لغة بصرية صامتة تعكس الحالة النفسية، والطبقة الاجتماعية، والعصر التاريخي للشخصية. يدرس مصمم الأزياء الدلالات النفسية للألوان (فالاحمر يرمز للثورة أو الخطر، والأزرق للهدوء أو العزلة، والأصفر للغيرة أو المرض) ليخلق شخصية متكاملة تتناغم مع الرؤية الإخراجية العامة للعرض.'
    },
    {
      'title': 'التاريخ المادي وتطور الأزياء عبر العصور',
      'description': 'دراسة الأزياء الإغريقية، الرومانية، والإليزابيثية وطرق إسقاطها معاصراً.',
      'category': 'تاريخ الزي',
      'detailedContent': 'يتطلب تصميم الأزياء المسرحية فهماً عميقاً للتطور التاريخي للثياب؛ فلكل عصر لغته النسيجية الخاصة ابتداءً من التونيكا الإغريقية وصولاً إلى أزياء عصر النهضة والأزياء المعاصرة، مع قدرة مصمم الأزياء على تكييف الطابع التاريخي ليخدم المضمون المعاصر للنص.'
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
                    detailedContent: topic['detailedContent']!,
                    themeColor: Colors.deepOrange,
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
