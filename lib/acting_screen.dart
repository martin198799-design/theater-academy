import 'package:flutter/material.dart';

class ActingScreen extends StatelessWidget {
  const ActingScreen({super.key});

  final List<Map<String, String>> actingTopics = const [
    {
      'title': 'إعداد الممثل (الجسم والصوت)',
      'description': 'تمارين اللياقة التعبيرية، مرونة الجسد، وتقنيات الإلقاء وتنفس الحجاب الحاجز.',
      'category': 'الأسس البدنية والصوتية'
    },
    {
      'title': 'الذاكرة الانفعالية وتقمص الشخصية',
      'description': 'منهج ستانسلافسكي، استدعاء التجارب الشعورية الحية وخلق الصدق الداخلي.',
      'category': 'المدارس والتقنيات'
    },
    {
      'title': 'الفعل والهدف المسرحي (Objective)',
      'description': 'كيفية بناء الدافع الدرامي، الصراع الداخلي والخارجي، وتحقيق أهداف الشخصية.',
      'category': 'البناء الدرامي'
    },
    {
      'title': 'التفاعل الجماعي وإيقاع المشهد',
      'description': 'الاستماع التفاعلي بين الممثلين، توزيع طاقات المشهد، وضبط الإيقاع العام.',
      'category': 'الأداء الجماعي'
    },
    {
      'title': 'الارتجل المسرحي ومسرح الجسد',
      'description': 'تحرير الخيال، التعبير غير اللفظي، ومدارس مسرح الحركة (مثل ميرينهولد).',
      'category': 'المهارات المتقدمة'
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
          return Container(
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
          );
        },
      ),
    );
  }
}
