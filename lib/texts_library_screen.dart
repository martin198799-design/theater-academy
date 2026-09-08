import 'package:flutter/material.dart';
import 'topic_detail_screen.dart';

class TextsLibraryScreen extends StatelessWidget {
  const TextsLibraryScreen({super.key});

  final List<Map<String, dynamic>> textsTopics = const [
    {
      'title': 'هاملت — وليم شكسبير',
      'description': 'التراجيديا الخالدة حول الشك، الانتقام، ومعضلة الوجود الإنساني في بلاط الدنمارك.',
      'category': 'مسرح عصر النهضة العالمي',
      'isPlayText': true,
      'detailedContent': '''[المشهد الأول: منصة القلعة في إلسينور. ليل بارد ومظلم. يظهر الشبح أمام هاملت وهوراشيو]

هاملت: (مندهشاً ومرتجفاً) أيها الروح الطاهرة، أو الملاك الهابط من السماء، أكنت طيفاً برّاً أم روحاً خبيثاً.. أقبلت من النعيم أم هبطت من الجحيم، فإن محياك ينطق بالأسى حتى لأكاد أسمع صوتك! أجبني.. لا تجعلني أتخبط في جاهليتي. قل: لماذا؟ ماذا نصنع برفاتك؟ ولأي غاية عاد جسدك الميت ليخرق حدود القبر؟

الشبح بصوت عميق مجوف: لا تسرع يا هاملت، بل أنصت.. لقد جئت لأكشف لك عن وزرٍ فظيع وجريمة نكراء أودت بحياتي. أنا روح أبيك، أطوف في جنح الظلام عقاباً لذنوب اقترفت في حياتي الدنيا حتى تُطهّر النيران روحي الآثمة...

هاملت: تفضل يا أبتي، فإن سمعي كله آذان صاغية لأنصت إليك!

الشبح: لقد قيل إنني حين كنت نائماً في حديقتي لدغتني أفعى.. هكذا خدعوا مملكة الدنمارك بكذبهم المفضوح. لكن اعلم يا بني أن الأفعى التي أودت بحياة أبيك هي اليوم تلبس تاجه!

هاملت: يا إلهي! أخي. أعني عمّي؟!

الشبح: نعم، ذلك الخائن الماكر الذي استمال بشتى الحيل قلب أمك الفاجرة.. اجعل ثأرك مقدساً، ولا تدع سرير ملك الدنمارك مرتعاً للدنس والخيانة. وإني تاركك لضميرك.. وداعاً يا هاملت، تذكرني!

[يختفي الشبح تدريجياً وسط صمت هائل وهواء بارد]'''
    },
    {
      'title': 'ماكبث — وليم شكسبير',
      'description': 'دراسة درامية عميقة لتأثير طموح السلطة الأعمى وتآكل الضمير البشري.',
      'category': 'تراجيديا عالمية',
      'isPlayText': true,
      'detailedContent': '''[المشهد الرئيسي: قصر ماكبث. ليل عاصف. ماكبث يحمل الخنجر وينظر إلى يديه بذعر]

ماكبث: أهذا خنجر أراه أمامي، ونصله يشير نحو يدي؟ تعال لأقبض عليك.. لا أملكك، ومع ذلك ما زلت أراك! ألا يا شبحه المرئي ألا يمكنك أن تُلمس كما تُرى؟ أم أنك مجرد خنجر من وهم، صنيعة عقلي المعتل بالحمى والتفكير؟.. إنني أرى على نصلك قطرات من درمزٍ ثقيل لم تكن من قبل! لا.. بل هو الملك.. Duncan الذي أوشك على النوم. العتمة تطبق على القصر، والساحرات رددن نبوءتهن اللعينة في آذاني: سأكون ملكاً رغماً عن الجميع! لكن بأي ثمن؟ ثمن طعن الشرف والولاء في ظهره...'''
    },
    {
      'title': 'في انتظار غودو — صموئيل بيكيت',
      'description': 'تحفة مسرح العبث عن رتابة الانتظار الإنساني والمعنى الغائب في عالم عبثي.',
      'category': 'مسرح العبث الحديث',
      'isPlayText': true,
      'detailedContent': '''[المشهد: طريق مقفر، شجرة جرداء. المساء يتسلل ببطء. فلاديمير واستراغون يتأملان الأفق]

استراغون: (يتململ في مكانه) دعنا نذهب من هنا. لم يعد بإمكاني التحمل.
فلاديمير: لا يمكننا الذهاب يا استراغون.
استراغون: ولماذا لا يمكننا؟
فلاديمير: إننا ننتظر غودو.
استراغون: (تنهيدة عميقة حزينة) أه... صحيح. تذكرت. أترى أنه سيأتي اليوم حقاً؟
فلاديمير: لقد أرسلنا له رسالة أمس.. ألا تذكر؟
استراغون: وماذا قال؟
فلاديمير: قال.. إنه ربما لن يأتي اليوم، ولكنه بالتأكيد سيأتي غداً.
استراغون: إذن فلننتظر غداً أيضاً.
فلاديمير: هكذا نحن.. ننتظر بلا نهاية، والوقت يمر وكأنه لا يمر. (يصمتان معاً وهما ينظران إلى الفراغ).'''
    },
    {
      'title': 'بيت الدمية — هنريك إبسن',
      'description': 'دراما اجتماعية واقعية تفكك زيف العلاقات الزوجية والقيود المفروضة على المرأة.',
      'category': 'المسرح الواقعي الحديث',
      'isPlayText': true,
      'detailedContent': '''[المشهد: غرفة المعيشة في منزل تورفالد هيلمر. نورا تقف بملابس السفر وتواجه زوجها بصرامة]

نورا: اجلس يا تورفالد. لدينا حديث طويل ومهم يجب أن نتصارح فيه للمرة الأولى في حياتنا الزوجية التي امتدت لسنين طويلة.
تورفالد (باستغراب وخوف طفيف): نورا! ما هذه النبرة الجادة؟ وعن أي حديث تتحدثين في هذه الساعة المتأخرة؟
نورا: عن زواجنا يا تورفالد. طوال ثماني سنوات، عشت معك كدمية جميلة تلعب بها متى شئت، وفي بيت والدي من قبله كنت لعبته المدللة أيضاً. لم أكن إنساناً حقيقياً له فكر أو إرادة مستقلة. لقد حان الوقت لكي أرحل وأبحث عن ذاتي وعقلي بعيداً عن سجنك المزخرف.
تورفالد: مجنونة أنتِ! ماذا سيقول الناس؟ ألا فكرتِ في سمعتكِ وفي بيتكِ وأولادكِ؟
نورا: لم يعد يهمني ما يقوله الناس ولا قواعد هذا المجتمع الزائف. واجبي الأهم الآن هو نحو نفسي أولاً وقبل كل شيء.'''
    },
    {
      'title': 'بستان الكرز — أنطون تشيخوف',
      'description': 'ملحمة التغيرات الاجتماعية وافلاس الطبقة الإقطاعية في روسيا القيصرية.',
      'category': 'الدراما الروسية الكلاسيكية',
      'isPlayText': true,
      'detailedContent': '''[المشهد: غرفة الاستقبال في منزل ليوبوف أندريفنا. نافذة مطلة على بستان الكرز المزهر]

فارينيا (بقلق متزايد): العرض قريب يا أمي، والديون تحاصرنا من كل جهة ولا نعرف كيف سنُسدد التزاماتنا البنكية. بستان الكرز العظيم هذا.. أخشى أن يُباع في المزاد العلني غداً!
ليوبوف أندريفنا (وهي تنظر بابتسامة حالمة نحو البستان): بستان الكرز.. طفولتي، ذكرياتي كلها متأصلة هنا بين أزهاره البيضاء النقية. كيف يُعقل أن يُباع لأجل المال؟ إنه أجمل ما في روسيا كلها.
لوباخين (رجل الأعمال الصاعد): يا ليو بوف أندريفنا، إن البستان شاسع لكنه غير مثمر بالقدر الكافي، والحل الوحيد لإنقاذ ما يمكن إنقاذه هو تقطيعه وتأجير أراضيه لبناء أكواخ صيفية للمصطافين.
ليوبوف (باستنكار وغضب): أكواخ صيفية؟! أتفرط في بستان العائلة التاريخي لأجل مساكن رخيصة؟ مستحيل!'''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          'مكتبة النصوص المسرحية',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: textsTopics.length,
        itemBuilder: (context, index) {
          final topic = textsTopics[index];
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
                    themeColor: Colors.cyan,
                    isPlayText: topic['isPlayText'] ?? false,
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
                border: Border.all(color: Colors.cyan.shade700.withOpacity(0.4), width: 1.5),
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
                            color: Colors.cyan.shade900.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            topic['category']!,
                            style: TextStyle(color: Colors.cyan.shade300, fontSize: 11),
                          ),
                        ),
                        Icon(Icons.menu_book_rounded, color: Colors.cyan.shade400, size: 22),
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
