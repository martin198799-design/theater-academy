import 'package:flutter/material.dart';
import 'topic_detail_screen.dart';

class ActingScreen extends StatelessWidget {
  const ActingScreen({super.key});

  final List<Map<String, String>> actingTopics = const [
    {
      'title': 'تمارين الصوت والتنفس الأكاديمي',
      'description': 'تقنيات التنفس البطني، إخراج الرنين الصوتي، والتحكم في طبقات الإلقاء فوق الخشبة.',
      'category': 'الصوت والإلقاء',
      'detailedContent': 'البرنامج التدريبي لصوت الممثل:\n• تنفس الحجاب الحاجز: الاستنشاق العميق لملء التجويف البطني وإطالة إخراج الهواء مع نطق الحروف بوضوح.\n• رنين الحلق والصدر: تمارين لإبراز القوة الصوتية دون إجهاد الأحبال الصوتية.\n• إدارة الإيقاع والوقفات: توظيف الصمت والصوت كأداتين دراميتين للتأثير على المتلقي.'
    },
    {
      'title': 'تقنيات الحركة والجسد المرن',
      'description': 'إدارة طاقة الجسد، التعبير الحركي الصامت، والانسجام مع الفضاء المسرحي.',
      'category': 'الجسد والحركة',
      'detailedContent': 'محاور التدريب الجسدي:\n• الوعي المكاني: إدراك الممثل لكتلته داخل خشبة المسرح وتوزيع طاقته بالتساوي.\n• الإيماءة التعبيرية: تحويل المشاعر الداخلية إلى حركات جسدية مقروءة وموحية.\n• التناغم العضلي: تمارين الاسترخاء والتخلص من التوتر العضلي قبل مواجهة الجمهور.'
    },
    {
      'title': 'آلية بناء الشخصية الدرامية',
      'description': 'التحليل النفسي والاجتماعي للشخصية، دوافعها، وعلاقتها بالصراع المسرحي.',
      'category': 'بناء الشخصية',
      'detailedContent': 'خطوات بناء الشخصية:\n1. الأبعاد الثلاثة: تحديد البعد البشري (العمر، المظهر)، البعد الاجتماعي (المكانة، العلاقات)، والبعد النفسي (المخاوف، الطموحات).\n2. الدافع الخفي: اكتشاف "ما تريد" الشخصية بوعي وما تحتاجه حقاً بلا وعي.\n3. الذاكرة العاطفية: استدعاء خبرات حقيقية لتغذية الصدق الداخلي للأداء.'
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
                    detailedContent: topic['detailedContent']!,
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
