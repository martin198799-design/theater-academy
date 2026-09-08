import 'package:flutter/material.dart';
import 'topic_detail_screen.dart';

class CostumesLightingScreen extends StatelessWidget {
  const CostumesLightingScreen({super.key});

  final List<Map<String, String>> costumesLightingTopics = const [
    {
      'title': 'علم نفس الألوان ودلالات الأزياء المسرحية',
      'description': 'كيف تعكس الأزياء البعد الاجتماعي، النفسي، والطبقي للشخصية المسرحية.',
      'category': 'الأزياء والمكياج',
      'detailedContent': 'الأزياء المسرحية ليست مجرد ملابس نرتديها على الخشبة، بل هي لغة بصرية صامتة تعكس الحالة النفسية، والطبقة الاجتماعية، والعصر التاريخي للشخصية. يدرس مصمم الأزياء الدلالات النفسية للألوان (فالاحمر يرمز للثورة أو الخطر، والأزرق للهدوء أو العزلة، والأصفر للغيرة أو المرض) ليخلق شخصية متكاملة تتناغم مع الرؤية الإخراجية العامة للعرض.'
    },
    {
      'title': 'دور الإضاءة المسرحية في بناء الجو الدرامي والنفسي',
      'description': 'التحكم بالزوايا، الألوان، والشدة الضوئية لتوجيه عين المشاهد وصنع التوتر.',
      'category': 'الإضاءة والتقنيات',
      'detailedContent': 'الإضاءة المسرحية هي "فرشاة الرسم" التي يلون بها المخرج الفراغ المسرحي. لا تقتصر وظيفتها على إنارة الممثلين ليراهم الجمهور، بل تتعدى ذلك لتكون عنصراً درامياً فاعلاً؛ فالإضاءة الجانبية الحادة تخلق توترات وغموضاً، بينما الإضاءة الناعمة توحي بالدفء والرومانسية. كما تلعب زوايا السقوط الضوئي دوراً محورياً في إبراز ملامح الحزن أو الفرح أو الصراع الداخلي على وجه الممثل.'
    },
    {
      'title': 'التكامل البصري بين الإضاءة والديكور والأزياء',
      'description': 'خلق السمفونية البصرية الموحدة التي تخدم الفكرة الفلسفية والجمالية للعرض.',
      'category': 'التكامل البصري',
      'detailedContent': 'حتى ينجح العرض المسرحي بصرياً، يجب أن تنصهر عناصر الإضاءة والأزياء والديكور في وحدة عضوية متناغمة. إن أي تنافر بين لون الأزياء وخلفية الديكور أو زاوية الإضاءة يكسر الإيهاب ويشتت انتباه المتفرج. لذلك يعمل السينوغراف ومصمم الإضاءة بتنسيق تام مع المخرج لضمان أن كل ومضة ضوء وكل قطعة قماش تخدم الفكرة الكبرى للنص.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          'الملابس والإضاءة',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: costumesLightingTopics.length,
        itemBuilder: (context, index) {
          final topic = costumesLightingTopics[index];
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
                    themeColor: Colors.orange,
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
                border: Border.all(color: Colors.orange.shade700.withOpacity(0.4), width: 1.5),
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
                            color: Colors.orange.shade900.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            topic['category']!,
                            style: TextStyle(color: Colors.orange.shade300, fontSize: 11),
                          ),
                        ),
                        Icon(Icons.lightbulb_rounded, color: Colors.orange.shade400, size: 22),
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
