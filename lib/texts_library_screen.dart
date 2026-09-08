import 'package:flutter/material.dart';
import 'topic_detail_screen.dart';

class TextsLibraryScreen extends StatelessWidget {
  const TextsLibraryScreen({super.key});

  final List<Map<String, dynamic>> playsLibrary = const [
    {
      'title': 'أوديب ملكاً - سوفوكليس',
      'description': 'التراجيديا الخالدة الكاملة للقدر البشري والبحث عن الحقيقة في طيبة.',
      'category': 'المسرح اليوناني الكلاسيكي',
      'themeColor': Colors.red,
      'acts': [
        {
          'actTitle': 'الفصل الأول: نكبة طيبة ومقدمة العرافة',
          'actContent': '''شخصيات الفصل:
- أوديب (ملك طيبة)
- كاهن زوس
- كريون (شقيق يو كاستا)
- جوقة الشيوخ الأطبيين

(الحدث: أمام قصر أوديب في طيبة. جموع الشعب تحتشد حاملة أغصان الزيتون تضرعاً لرفع الطاعون الذي أهلك الحرث والنسل).

أوديب: 
أيها الأبناء، يا نسل كادموس القديم، لماذا تحشدون هكذا أمام قصري بمسوح الحزن وأغصان التيسير؟ لقد أرسلت إليكم من ينبئني بأصوات البكاء والدعاء التي تملأ الشوارع، ولم أرد أن أعتمد على رسل الآخرين، فها أنذا جئت بنفسي لأسمع منكم. تكلموا، فما أنا إلا مستعد لكل عون يخلص طيبة من وبائها.

الكاهن:
يا أوديب، يا سيد هذه البلاد وحاكمها، أنت ترى بلسانك حجم الدمار الذي يحيط بمدينة طيبة؛ فالأرض تموت، والماشية تهلك، وأجنة النساء تجهض في الأرحام، والإله أوبولو ينشر طاعونه المدمر في كل مكان. نحن لا نراك إلهاً بين الآلهة، لكننا نلجأ إليك باعتبارك الأعظم بين البشر في قهر النكبات وحل ألغاز القدر. أنقذ مدينتك!

أوديب:
أعرف حجم الألم يا أبنائي، وكل واحد منكم يعاني وجعاً يخصه وحده، لكن وجعي يمتد ليشمل روحي وقلبي ومدينة طيبة بأسرها. لقد أرسلت أخي كريون إلى معبد دلفي العراف لاستقصاء الإرادة الإلهية ومعرفة سبب هذه اللعنة.

[دخول كريون حاملاً نبوءة العراف]
أوديب:
ها قد أقبل كريون. أيها الصديق، ما الذي حمله إله النور من جواب؟

كريون:
(يتقدم بصوت خفيض ووجه يكسوه الوجوم)
الجواب واضح وصريح يا أوديب.. طاعون طيبة لن يرتفع إلا إذا طردنا النجاسة المستوطنة في هذه الأرض، وتطهّرنا من دم الملك السابق لايوس المغدور. العراف يؤكد: قاتل لايوس يعيش بيننا دون عقاب!

أوديب:
(بحدة وحماس)
سأبحث عنه بنفسي كأنني ابنه البار، وسأطارد هذا الدم حتى أطهّر طيبة، وليكن مصير القاتل اللعنة والشتات!'''
        },
        {
          'actTitle': 'الفصل الثاني: مواجهة العراف الأعمى تيسياس',
          'actContent': '''شخصيات الفصل:
- أوديب
- تيسياس (الكاهن الأعمى)
- جوقة الشيوخ

(الحدث: استدعاء العراف تيسياس لمعرفة القاتل الحقيقي، ورفضه البوح في البداية خوفاً من هول الحقيقة).

أوديب:
أيها العراف الذي يرى بقلبه ما تعجزه الأبصار، تيسياس، إن مدينتك تذبل وتستنجد بك، فاعلن لنا اسم القاتل.

تيسياس:
(يتنهد عميقاً ويطأطأ رأسه)
آهٍ.. ما أقسى المعرفة حين لا تعود بالخير على صاحبها! دعني أذهب إلى بيتي يا أوديب، واستر أنت مصيرك وأستر أنا مصيري.

أوديب:
(متجهماً بغضب)
ما هذا الكلام يا تيسياس؟ أتحجب عن المدينة طوق نجاة وهي تحتضضر؟ أم أنك تشارك في هذه المؤامرة؟

تيسياس:
(يرفع رأسه ويواجه أوديب بنظرة ثاقبة رغم عماه)
أنت نفسك يا أوديب.. أنت هي النجاسة التي تلوث أرض طيبة! أنت القاتل الذي تبحث عنه دون أن تدري!

أوديب:
(يضحك بسخرية مرة)
أتعيد الكلمة مرة أخرى أيها الحقير؟ أتريد أن تختبر صبري؟ اسمع، أقسم أنك لست بعيداً عن تدبير هذه الجريمة بنفسك!

تيسياس:
أنا أتحداك أن تحرس حقيقتك؛ أنت متزوج من التي ولدتْك، وقد سفكت دم من أنجبك! (ينصرف بخطى بطيئة تاركاً أوديب في دوامة من الشك والظنون).'''
        },
        {
          'actTitle': 'الفصل الثالث: انكشاف الحقيقة والنهاية التراجيدية',
          'actContent': '''شخصيات الفصل:
- أوديب
- يو كاستا (الملكة)
- الراعي العجوز / رسول كورنثوس

(الحدث: تطابق خيوط الماضي، انتحار يو كاستا شنقاً، وسمل أوديب لعينيه ودخوله في المنفى الاختياري).

يو كاستا:
(تدخل غرفتها الداخلية شاحبة الوجه بعد أن أدركت الهول المفزع)
يا للأقدار العمياء! لقد ولدناه.. تزوجناه.. وأنجبنا منه كارثة اللعنة الكبرى! (تضع حداً لحياتها شنقاً).

أوديب:
(يقتحم الغرفة صارخاً ليجدها جثة هامدة)
لا ملك لي، لا زوجة، لا أرض.. أيتها العينان اللتان لم تبصرا الحقيقة حين كانت واضحة، انظرا الآن إلى الظلام الذي استحقرتماه! (ينزع دبوسين ذهبيين من ثوبها ويسمل عينيه الاثنين حتى سال الدم على وجهه). ليخرجني أحدكم بعيداً عن طيبة، وليلعن التاريخ أوديب البائس الذي صار ألعوبةً في يد الآلهة!'''
        }
      ]
    },
    {
      'title': 'أنتيغوني - سوفوكليس',
      'description': 'صراع الضمير الإنساني وقوانين الآلهة ضد استبداد السلطة وقوانين الدولة.',
      'category': 'المسرح اليوناني',
      'themeColor': Colors.deepOrange,
      'acts': [
        {
          'actTitle': 'الفصل الأول: التحدي عند فجر الباحة',
          'actContent': '''شخصيات الفصل:
- أنتيغوني
- إيسمين (أختها)

(الحدث: خارج أسوار القصر عند الفجر، والنقاش حول قرار كريون بمنع دفن بولينيكيس).

أنتيغوني:
يا إيسمين الحبيبة، يا توأم روحي وابنة أمي، هل تعلمين بأي لعنة جديدة يلاحقنا بها كريون؟ لقد أصدر مرسوماً يمنع دفن شقيقنا بولينيكيس، ويتركه جيفة طعماً للكلاب والطيور الجارحة!

إيسمين:
(مرعوبة)
لكن ما عسانا نفعل أمام جبروت حاكم المدينة وقوانينه الصارمة؟

أنتيغوني:
قوانين البشر الزائلة لا تعلو على قوانين الآلهة الخالدة. سأدفنه بيدَيَّ هاتين مهما كان الثمن!'''
        },
        {
          'actTitle': 'الفصل الثاني: المواجهة الكبرى أمام العرش',
          'actContent': '''شخصيات الفصل:
- أنتيغوني
- كريون (حاكم طيبة)
- الحارس

(الحدث: اقتياد أنتيغوني مقيدة أمام كريون بعد ضبطها تتلو صلاة الدفن وتراب الستر على جسد أخيها).

كريون:
أأنتِ الجريئة التي تجرأتِ على كسر مرسومي وتحدّت هيبة الدولة؟

أنتيغوني:
نعم، أنا فعلتُها. لم تكن أوامر إله الحق ولا عدالة الموتى الوصايا التي أملتها عليَّ، بل أوامرك أنت الواهية التي لا تقف أمام قوانين الأبدية والسماء.'''
        },
        {
          'actTitle': 'الفصل الثالث: القبر الحجري وخاتمة الدم',
          'actContent': '''شخصيات الفصل:
- أنتيغوني / كريون / هايمون

(الحدث: سجن أنتيغوني حية في القبر الحجري، وتتابع المآساة بانتحار هايمون خطيبها وابن كريون، وانتحار الملكة).

(تُقتاد أنتيغوني إلى قبرها المظلم. وفي القصر يكتشف كريون متأخراً فداحة جبروته بعد انتحار ابنه وزوجته، ليقف وحيداً في وسط الخراب والندم الأبدي).'''
        }
      ]
    },
    {
      'title': 'هاملت - ويليام شكسبير',
      'description': 'تحفة الدراما العالمية في التردد الإنساني، الشك، والثأر.',
      'category': 'المسرح الإليزابيثي / العالمي',
      'themeColor': Colors.indigo,
      'acts': [
        {
          'actTitle': 'الفصل الأول: شبح الأب على أسوار إلسنور',
          'actContent': '''شخصيات الفصل:
- هاملت (أمير الدنمارك)
- شبح الملك الأب
- هوراشيو

(الحدث: منتصف الليل على أسوار قلعة إلسنور والرياح الباردة تعصف بالمكان).

الشبح:
اسمعني يا هاملت.. أنا روح أبيك، لم أمت ميتة طبيعية بل قُتلت غيلةً وسماً على يد عمك الخائن كلاوديوس الذي اغتصب عرشي وتزوج أمك! انتقم لي يا بني!'''
        },
        {
          'actTitle': 'الفصل الثاني: المونولوج الخالد (أكون أو لا أكون)',
          'actContent': '''شخصيات الفصل:
- هاملت (منفرداً في الغرفة المظلمة)

(الحدث: تأملات عميقة في طبيعة الوجود، الموت، ومعضلة الموت والحياة).

هاملت:
أكون أو لا أكون.. تلك هي المسألة!
أأنه لأسمى في النفس أن تحمل صروف الدهر القاسي وسهامه العاتية، أم أن تشهر سيفك في وجه بحر من الرزايا وتضع لها حدًا بالتمرد؟
أن تموت.. أن تنام لا أكثر! وأن تعلم أن النوم يضع حداً لأوجاع القلب والآلاف من الهزات الطبيعية التي يرثها الجسد البشري.. لتلك هي غاية تُرتجى وتُبتغى.'''
        }
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          'مكتبة النصوص والفصول المسرحية',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: playsLibrary.length,
        itemBuilder: (context, index) {
          final play = playsLibrary[index];
          final Color themeColor = play['themeColor'] as Color;
          
          return Container(
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: const Color(0xFF1E1E1E),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: themeColor.withOpacity(0.5), width: 1.5),
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
                          color: themeColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          play['category']!,
                          style: TextStyle(color: themeColor, fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(Icons.theater_comedy_rounded, color: themeColor, size: 24),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    play['title']!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
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
                  const Divider(color: Colors.white24, height: 24),
                  const Text(
                    'اختر الفصل المعني للدراسة والتحليل:',
                    style: TextStyle(color: Colors.white70, fontSize: 12, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                  const SizedBox(height: 8),
                  ...(play['acts'] as List).map((act) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TopicDetailScreen(
                                title: '${play['title']} - ${act['actTitle']}',
                                description: play['description']!,
                                category: play['category']!,
                                detailedContent: act['actContent']!,
                                themeColor: themeColor,
                                isPlayText: true,
                              ),
                            ),
                          );
                        },
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.white10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            textDirection: TextDirection.rtl,
                            children: [
                              Expanded(
                                child: Text(
                                  act['actTitle']!,
                                  style: const TextStyle(color: Colors.white, fontSize: 13),
                                  textDirection: TextDirection.rtl,
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios_rounded, color: themeColor, size: 14),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
