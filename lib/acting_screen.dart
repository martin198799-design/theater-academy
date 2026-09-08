import 'package:flutter/material.dart';
import 'topic_detail_screen.dart';

class ActingScreen extends StatelessWidget {
  const ActingScreen({super.key});

  final List<Map<String, String>> actingTopics = const [
    {
      'title': 'أساسيات التمثيل المسرحي وإعداد الممثل',
      'description': 'المدخل الأكاديمي لبناء الممثل، وتطوير أدواته الجسدية والنفسية والصوتية.',
      'category': 'التأسيس الأكاديمي',
      'detailedContent': 'يمثل فن التمثيل طاقة تعبيرية حية ومجسمة للنص المسرحي. يبدأ إعداد الممثل من تحرير جسده وروحه من القيود اليومية العادية، وصقل حواسه لتكون مستجيبة لأدق التفاصيل الدرامية. يتطلب هذا الفن انضباطاً صارماً، ووعياً تاماً بآليات التنفس، والتحكم في الإيقاع الداخلي والخارجي، والقدرة على تقمص الأبعاد النفسية والاجتماعية للشخصية بحرية وصدق مطلق فوق الخشبة.'
    },
    {
      'title': 'التركيز والانتباه والارتجال المسرحي',
      'description': 'تقنيات اليقظة الذهنية على الخشبة وتوليد الأفعال الحية من خلال الارتجال الحر.',
      'category': 'المهارات والتمارين',
      'detailedContent': 'يُعد التركيز الدائري والمغلق (دائرة الاهتمام) أحد أهم ركائز الأداء التمثيلي؛ حيث يتعلم الممثل كيف يعزل المشتتات الخارجية ويركز طاقته كلياً داخل الحدث الدرامي. أما الارتجال المسرحي فهو المختبر الخلاق الذي يختبر قدرة الممثل على التفاعل العفوي، ابتكار الحوارات، واكتشاف أبعاد جديدة للشخصية بعيداً عن الجمود النصي.'
    },
    {
      'title': 'الصوت والإلقاء والتعبير الجسدي',
      'description': 'تقنيات التنفس البطني، الرنين الصوتي، وتحويل الجسد إلى أداة تعبيرية صامتة وناطقة.',
      'category': 'الصوت والجسد',
      'detailedContent': 'الصوت هو مرآة روح الشخصية المسرحية؛ لذا يتطلب تدريباً شاقاً على التنفس البطني (الحجاب الحاجز)، وإخراج الرنين من التجويف الصدري والرأسي دون إجهاد الأحبال الصوتية. وفي المقابل، يُعتبر التعبير الجسدي لغة بصرية مستقلة؛ إذ يعلم الممثل كيف يجعل عضلاته، وتعبيرات وجهه، وحركاته الإيقاعية تنطق بالمعنى قبل أن ينطق لسانه بالحرف.'
    },
    {
      'title': 'الانفعال والشعور والذاكرة الانفعالية عند ستانسلافسكي',
      'description': 'استدعاء الخبرات الحقيقية لتحقيق الصدق الداخلي والإقناع الفني للمتفرج.',
      'category': 'المدارس النفسية',
      'detailedContent': 'ترتكز مدرسة ستانسلافسكي في التمثيل على مفهوم "الصدق الداخلي" و"الذاكرة الانفعالية". لا يكتفي الممثل بأداء الحركات بشكل ميكانيكي، بل عليه أن يبحث في مخزونه الشعوري والخبراتي عن تجارب حقيقية مشابهة لما تمر به الشخصية، ليعيد صياغتها ويوظفها فوق الخشبة. هذا يمنح الأداء بعداً إنسانياً عميقاً يجعل المتفرج يتماهى مع المأساة أو الفرح بصدق لا يزيحه الشك.'
    },
    {
      'title': 'بناء الشخصية المسرحية وتحليلها',
      'description': 'تفكيك الأبعاد الثلاثة (الجسدية، الاجتماعية، والنفسية) لبناء شخصية متكاملة.',
      'category': 'بناء الشخصية',
      'detailedContent': 'يتطلب بناء الشخصية المسرحية تحليلاً دقيقاً ومضنياً يتوزع على ثلاثة محاور رئيسية: البعد البشري والجسدي (العمر، الهيئة، المظهر)، البعد الاجتماعي (البيئة، المكانة، العلاقات الأسرية والطبقية)، والبعد النفسي (المخاوف، الطموحات، العقد النفسية، والدوافع الخفية). من خلال تداخل هذه الأبعاد، تخرج الشخصية من الورق المكتوب لتصبح كحيّ ينبض بالحياة على الخشبة.'
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
