import 'package:flutter/material.dart';
import 'topic_detail_screen.dart';

class TextsLibraryScreen extends StatelessWidget {
  const TextsLibraryScreen({super.key});

  final List<Map<String, String>> playTexts = const [
    {
      'title': 'أوديب ملكاً - سوفوكليس (النص الكامل والمشاهد الدرامية)',
      'description': 'التراجيديا الخالدة التي تتناول بحث الإنسان عن الحقيقة ومواجهة القدر المحتوم.',
      'category': 'المسرح اليوناني الكلاسيكي',
      'detailedContent': '''شخصيات المسرحية:
- أوديب: ملك طيبة.
- يو كاستا: الملكة وزوجة أوديب.
- كريون: شقيق يو كاستا.
- تيسياس: الكاهن الأعمى.

[المشهد الأول: أمام قصر الملك في طيبة]
(تتحتشد جموع الشعب أمام القصر حاملين أغصان الزيتون رمز التضرع، ويتقدمهم كاهن زوس. يخرج أوديب من القصر محاطاً بحرسه بخطى واثقة ولكن يملؤها القلق من الأوبئة التي ضربت المدينة).

أوديب: 
أيها الأبناء، يا نسل كادموس القديم، لماذا تحتشدون هكذا أمام قصري بمسوح الحزن وأغصان التيسير؟ لقد أرسلت إليكم من ينبئني بأصوات البكاء والدعاء التي تملأ الشوارع، ولم أرد أن أعتمد على رسل الآخرين، فها أنذا قد جئت بنفسي لأسمع منكم. تكلموا، فما أنا إلا مستعد لكل عون يخلص طيبة من وبائها.

الكاهن:
يا أوديب، يا سيد هذه البلاد وحاكمها، أنت تري بلسانك حجم الدمار الذي يحيط بمدينة طيبة؛ فالأرض تموت، والماشية تهلك، وأجنة النساء تجهض في الأرحام، والإله الظلامي أوبولو ينشر طاعونه المدمر في كل مكان. نحن لا نراك إلهاً بين الآلهة، لكننا نلجأ إليك باعتبارك الأعظم بين البشر في قهر النكبات وحل ألغاز القدر. أنقذ مدينتك!

أوديب:
أعرف حجم الألم يا أبنائي، وكل واحد منكم يعاني وجعاً يخصه وحده، لكن وجعي يمتد ليشمل روحي وقلبي ومدينة طيبة بأسرها. لقد أرسلت أخي كريون إلى معبد دلفي العراف لاستقصاء الإرادة الإلهية ومعرفة سبب هذا اللعنة.

[دخول كريون حاملاً نبوءة العراف]
أوديب:
ها قد أقبل كريون. أيها الصديق، ما الذي حمله إله النور من جواب؟

كريون:
(يتقدم بصوت خفيض ووجه يكسوه الوجوم)
الجواب واضح وصريح يا أوديب.. طاعون طيبة لن يرتفع إلا إذا طردنا النجاسة المستوطنة في هذه الأرض، وتطهّرنا من دم الملك السابق لايوس المغدور. العراف يؤكد: قاتل لايوس يعيش بيننا دون عقاب!

أوديب:
(بحدة وحماس)
سأبحث عنه بنفسي كأنني ابنه البار، وسأطارد هذا الدم حتى أطهّر طيبة، وليكن مصير القاتل اللعنة والشتات!''',
    },
    {
      'title': 'أنتيغوني - سوفوكليس (صراع الضمير والقانون)',
      'description': 'دراما أخلاقية واحتجاجية ترتكز على الصراع بين قوانين الدولة والروابط العائلية.',
      'category': 'المسرح اليوناني',
      'detailedContent': '''شخصيات المسرحية:
- أنتيغوني: ابنة أوديب.
- إيسمين: أختها.
- كريون: حاكم طيبة الجديد.

[المشهد الأول: باحة قصر طيبة عند فجر اليوم التالي للمعركة]
(تتسلل أنتيغوني بخطى حذرة نحو أختها إيسمين خارج أسوار القصر، ويبدو على وجهها الإصرار والتحدي).

أنتيغوني:
يا إيسمين الحبيبة، يا توأم روحي وابنة أمي، هل تعلمين بأي لعنة جديدة يلاحقنا بها كريون؟ لقد أصدر مرسوماً يمنع دفن شقيقنا بولينيكيس، ويتركه جيفة طعماً للكلاب والطيور الجارحة، بينما سمح بدفن إتيانيكليس بكل مراسيم الشرف!

إيسمين:
(مرعوبة وهي تلتفت حولها)
لقد سمعت بالأمر يا أنتيغوني، لكن ما عسانا نفعل نحن النساء الضعيفات أمام جبروت حاكم المدينة وقوانينه الصارمة؟ العصيان معناه الموت شنقاً أو رجماً في ساحة المدينة.

أنتيغوني:
(ترفع رأسها بكبرياء تراجيدي)
قوانين البشر الزائلة لا تعلو على قوانين الآلهة الخالدة التي تأمر بوارية الموتى. إذا كان الثمن هو حياتي، فأن أُدفن بشرف بجانب أخي أهون عندي ألف مرة من أن أعيش بضمير منكسر وجبان! سأدفنه بيدَيَّ هاتين مهما كانت النتائج.''',
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
        itemCount: playTexts.length,
        itemBuilder: (context, index) {
          final play = playTexts[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicDetailScreen(
                    title: play['title']!,
                    description: play['description']!,
                    category: play['category']!,
                    detailedContent: play['detailedContent']!,
                    themeColor: Colors.red,
                    isPlayText: true,
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
                border: Border.all(color: Colors.red.shade700.withOpacity(0.4), width: 1.5),
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
                            color: Colors.red.shade900.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            play['category']!,
                            style: TextStyle(color: Colors.red.shade300, fontSize: 11),
                          ),
                        ),
                        const Icon(Icons.menu_book_rounded, color: Colors.red, size: 22),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      play['title']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      play['description']!,
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
