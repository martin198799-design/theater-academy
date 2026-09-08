import 'package:flutter/material.dart';
import 'topic_detail_screen.dart';

class DirectingScreen extends StatelessWidget {
  const DirectingScreen({super.key});

  final List<Map<String, String>> directingTopics = const [
    {
      'title': 'فن الإخراج المسرحي وأسسه',
      'description': 'دراسة شاملة حول نشأة الإخراج الحديث وتحول المخرج إلى مؤلف ثانٍ للعرض.',
      'category': 'الأسس والتأصيل',
      'detailedContent': 'يعتبر فن الإخراج المسرحي الركيزة الحديثة التي تُنظم وتصهر كافة العناصر الفنية والبصرية في بوتقة واحدة متجانسة. لم يعد المخرج مجرد ناظم لحركة الممثلين على الخشبة، بل أصبح مفكراً ومهندساً جمالياً يستنطق النص ويخلق له أبعاداً دلالية وفلسفية لم تكن ظاهرة للعين المجردة في النص المكتوب. ترتكز عملية الإخراج على فهم معمق للكتلة والفراغ، والإيقاع الداخلي والخارجي، وآلية قيادة طاقات فريق العمل (تمثيل، ديكور، إضاءة، موسيقى) نحو غاية فكرية وجمالية موحدة تؤثر في المتلقي.'
    },
    {
      'title': 'المنهج الواقعي في الإخراج',
      'description': 'محاكاة الحياة بدقة على الخشبة، نقل الصراعات الاجتماعية والنفسية بواقعية ملموسة.',
      'category': 'المدارس الإخراجية',
      'detailedContent': 'يقوم المنهج الواقعي في الإخراج على محاكاة الواقع المعيش بدقة وأمانة فنية، مع الغوص في الدوافع النفسية والاجتماعية للشخصيات. يرفض هذا المنهج المبالغة والافتعال، ويسعى لتقديم بيئة مسرحية تحاكي تفاصيل الحياة الحقيقية (سواء في الديكور، أو طريقة الأداء التمثيلي، أو الحوار الهادئ المعبر). يهدف المخرج الواقعي إلى جعل المشاهد يشعر وكأن ما يدور على الخشبة هو انعكاس حي لواقعه اليومي وصراعاته الحقيقية.'
    },
    {
      'title': 'المنهج البريختي في الإخراج (المسرح الملحمي)',
      'description': 'كسر الإيهاب، تقنية التغريب، وجعل المتفرج مشاركاً مفكراً لا مستهلكاً عاطفياً.',
      'category': 'المدارس الإخراجية',
      'detailedContent': 'أسس المخرج الألماني برتولت بريخت تقنيات "المسرح الملحمي" الذي يهدف إلى تحفيز التفكير النقدي لدى المتفرج بدلاً من توريطه عاطفياً فيما يسمى "بالإيهاب الواقعي". يعتمد المخرج في هذا النهج على تقنية التغريب (Verfremdungseffekt)، من خلال كسر الجدار الرابع، استخدام اللوحات التوضيحية، الأغاني التي تقطع سياق الدراما، وإظهار كواليس الإضاءة والتقنيات للمتفرج، ليدرك دائماً أنه أمام عرض مسرحي يتطلب منه التحليل واتخاذ موقف فكري وسياسي تجاه الأحداث.'
    },
    {
      'title': 'الإخراج المسرحي عند قسطنطين ستانسلافسكي',
      'description': 'الصدق الداخلي، الذاكرة الانفعالية، وبناء الفعل المتواصل للممثل.',
      'category': 'المدارس الإخراجية',
      'detailedContent': 'يُعد قسطنطين ستانسلافسكي الأب الروحي للمسرح النفسي الواقعي الحديث. في رؤيته الإخراجية، يركز على البحث العميق في "الحدث الأساسي" و"الفعل الهادف" لكل شخصية. يؤمن ستانسلافسكي بأن المخرج ليس مووجهاً آلياً فحسب، بل هو طبيب نفسي ومعلم يغوص مع الممثل في "الذاكرة الانفعالية" لاستخراج مشاعر حقيقية وصادقة تعبر عن مأساة الشخصية ودواخلها النفسية العميقة دون تصنع أو ابتذال.'
    },
    {
      'title': 'الإخراج المسرحي عند أنطونان أرتو (مسرح القسوة)',
      'description': 'تجاوز الكلمة، مخاطبة الحواس مباشرة، وتطهير الروح عبر الصدمة الجمالية.',
      'category': 'المدارس الإخراجية',
      'detailedContent': 'دعا أنطونان أرتو إلى ثورة جذرية على المسرح التقليدي الذي يعتمد كلياً على الأدب والنص المنطوق. في رؤيته المعروفة بـ "مسرح القسوة"، يرى أرتو أن الإخراج يجب أن يخاطب الحواس البشرية العميقة مباشرة (عبر الصرخات، الأضواء الحادة، الإيقاع الصوتي المرعب، والحركات الجسدية القاسية). الهدف هو تحرير المتفرج من قوقعة العقل والمنطق وإحداث صدمة تطهيرية توقظ قواه الداخلية المكبوتة.'
    },
    {
      'title': 'تكوين الصورة المسرحية وعلاقة المخرج بالممثل',
      'description': 'فن نحت الفراغ المسرحي، إدارة البروفات، وبناء لغة تفاهم مشتركة وسلسة.',
      'category': 'التقنيات التطبيقية',
      'detailedContent': 'تكوين الصورة المسرحية هو عملية تشكيل هندسي وبصري للكتل البشرية والديكور على الخشبة بطريقة تماثل اللوحات الفنية الكبرى. تتطلب هذه العملية فهماً دقيقاً لقواعد التوازن، والعمق، والبؤرة البصرية. أما علاقة المخرج بالممثل فهي الركيزة البشرية الأهم؛ إذ يجب أن تُبنى على أساس الثقة المتبادلة، والحوار الخلاق أثناء البروفات، ومنح الممثل مساحة للاكتشاف الحر ضمن الحدود التي ترسمها الرؤية الكلية للعرض.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          'الإخراج المسرحي',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: directingTopics.length,
        itemBuilder: (context, index) {
          final topic = directingTopics[index];
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
                    themeColor: Colors.blue,
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
                border: Border.all(color: Colors.blue.shade700.withOpacity(0.4), width: 1.5),
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
                            color: Colors.blue.shade900.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            topic['category']!,
                            style: TextStyle(color: Colors.blue.shade300, fontSize: 11),
                          ),
                        ),
                        Icon(Icons.movie_filter_rounded, color: Colors.blue.shade400, size: 22),
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
