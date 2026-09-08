import 'package:flutter/material.dart';
import 'topic_detail_screen.dart';

class ScenographyScreen extends StatelessWidget {
  const ScenographyScreen({super.key});

  final List<Map<String, String>> scenographyTopics = const [
    {
      'title': 'مفاهيم السينوغرافيا الحديثة وتشكيل الفضاء المسرحي',
      'description': 'دراسة تحول الديكور التقليدي إلى سينوغرافيا متكاملة تتفاعل مع الحدث والممثل.',
      'category': 'الأسس النظرية',
      'detailedContent': 'السينوغرافيا في المسرح المعاصر لم تعد مجرد قطع ديكور خشبية مرسومة تمثل مكاناً واقعياً، بل أصبحت الفلسفة البصرية الشاملة التي تنظم الفراغ المسرحي بأكمله. تشمل السينوغرافيا توزيع الكتل، استخدام المواد المختلفة، الفراغات، والخطوط التي تخدم المعنى الدرامي وتخلق مناخاً نفسياً وبصرياً يترجم جوهر النص المسرحي، متجاوزة حدود المحاكاة البصرية السطحية إلى فضاء دلالي عميق.'
    },
    {
      'title': 'التصميم المعماري للمسرح وعلاقته بالمتفرج',
      'description': 'تطور أشكال المسرح (الإيطالي، الدائري، المسرح المفتوح) وتأثيرها على العرض.',
      'category': 'عمارة المسرح',
      'dimensions': 'تطور شكل الفضاء المسرحي عبر التاريخ بدءاً من المسرح اليوناني المكشوف، مرورا بمسرح الإغريق ورومانيا، وصولاً إلى مسرح العلبة الإيطالية والمسارح التجريبية الحديثة ذات المنصات المرنة. كل شكل معماري يفرض علاقة محددة بين الممثل والمتفرج؛ فالمسرح الدائري يلغي الجدار الرابع ويخلق حميمية مطلقة، بينما المسرح الإيطالي يكرس البعد البصري والإيهامي عبر الستارة والمنصة المرتفعة.'
    },
    {
      'title': 'التوظيف الدلالي للكتل والعناصر البصرية',
      'description': 'كيف تتحول الأشكال والألوان إلى رموز تعبيرية تنطق بالمعنى الدرامي.',
      'category': 'التشكيل البصري',
      'detailedContent': 'كل عنصر بصري يوضع على الخشبة يحمل شحنة دلالية ونفسية؛ فالخطوط الحادة والعمودية توحي بالقوة والشموخ أو التهديد، بينما الخطوط المنحنية توحي بالمرونة والسكينة. وتلعب الكتل والمواد المستخدمة (الحديد الصدئ، الأخشاب القديمة، الأقمشة الشفافة) دوراً أساسياً في إيصال الفكرة الكامنة وراء النص دون الحاجة إلى كلمات.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          'الديكور والسينوغرافيا',
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
                    detailedContent: topic['detailedContent'] ?? topic['dimensions']!,
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
                        Icon(Icons.architecture_rounded, color: Colors.amber.shade400, size: 22),
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
