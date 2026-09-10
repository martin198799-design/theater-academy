import 'package:flutter/material.dart';

class PlayItem {
  final String title;
  final String playwright;
  final String description;
  final String fullDialogue;

  PlayItem({
    required this.title,
    required this.playwright,
    required this.description,
    required this.fullDialogue,
  });
}

class SchoolCategory {
  final String schoolName;
  final List<PlayItem> plays;

  SchoolCategory({
    required this.schoolName,
    required this.plays,
  });
}

final List<SchoolCategory> historicalPlaysDatabase = [
  SchoolCategory(
    schoolName: "1. مسرح شكسبير الكلاسيكي",
    plays: [
      PlayItem(
        title: "هاملت",
        playwright: "ويليام شكسبير",
        description: "صراع فلسفي ونفسي عميق حول الموت والخيانة والتردد الانتقامي.",
        fullDialogue: "هاملت: أيكون أو لا يكون.. تلك هي المسألة. أيهما أكثر سمواً للروح أن تتحمل ضربات وحظوظ القدر العاتية، أو أن تثور على طوفان من الأحزان وتضع حدا لها بمقاومتها؟ أن تموت.. أن تنام لا أكثر؛ وبنومنا نضع حدا لما يصيب القلب من آلاف الصدمات والعلل التي هي إرث الجسد.. ذلك مصير يُبتغى باهتمام. أن تموت.. أن تنام، أن تنام! فربما تحلم.. وهنا تكمن العقبة؛ فماذا يمكن أن يحلم به ذلك النوم حين نتخلص من غبار هذه الحياة الدنيا؟ هذا ما يجعلنا نقف وقفة تأمل فنطيل المعاناة ونحتمل طول البلاء.",
      ),
      PlayItem(
        title: "مكبث",
        playwright: "ويليام شكسبير",
        description: "مأساة الطموح الأعمى وتآكل الضمير الإنساني تحت تأثير نبوءات الساحرات.",
        fullDialogue: "مكبث: أهذه شفرة أراها أمامي، مقبضها موجه نحو يدي؟ تعال إذن لأقبض عليك.. لا أملكك ومع ذلك ما زلت أراك. أليست رؤيتك يا شكل الأوهام شيئاً يمكن أن يُلمس كما يُحس البصر؟ أم أنك لست سوى خنجر من صنع الوهم، ينبثق من دماغ مثقل بالحمى؟ إني أراك الآن، وتلوح لي في طريق مسيري شفرة جديدة لم تكن من قبل.. إن عيناي هما ضحايا حواسي الأخرى، أو أن الواحدة منهما تعادل البقية جميعاً.. لا أرى غير الدم مسالاً على نصلك ومقبضك.",
      ),
      PlayItem(
        title: "عطيل",
        playwright: "ويليام شكسبير",
        description: "دراما الغيرة المدمرة والشك الأعمى والتلاعب النفسي الخبيث.",
        fullDialogue: "عطيل: إياكم والغيرة أيها السادة.. إنها الوحش ذو العيون الخضراء الذي يسخر من اللحم الذي يقتات عليه. إن الزوج الذي يعلم بحاله ويحب امرأته الخائنة يعيش في نعيم الشك الملعون.. آه، كم هو شقي ذاك الذي يحب برعشة ويشك بجنون، ليعلم في النهاية أنه يعبد وهماً لا يرحم!",
      ),
      PlayItem(
        title: "يوليوس قيصر",
        playwright: "ويليام شكسبير",
        description: "صراع السلطة والولاء السياسي والخطابة والاغتيال في روما القديمة.",
        fullDialogue: "أنطونيوس: أيها الأصدقاء، أيها المواطنون، أيها الرومان، اعيروني آذانكم.. جئت لأدفن قيصر لا لأمدحه. إن الشر الذي يرتكبه الرجال يبقى من بعدهم غالباً، أما الخير فغالباً ما يُدفن مع عظامهم؛ فليكن الأمر كذلك مع قيصر. لقد أخبركم بروتوس أن قيصر كان طموحاً.. إن كان الأمر كذلك، فتلك خصلة نال عليها قيصر عقاباً قاسياً.",
      ),
    ],
  ),
  SchoolCategory(
    schoolName: "2. الكلاسيكية الفرنسية والكوميديا",
    plays: [
      PlayItem(
        title: "البخيل",
        playwright: "موليير",
        description: "كوميديا سوداء ساخرة تسلط الضوء على هوس جمع المال وتدميره للعلاقات الأسرية.",
        fullDialogue: "هاربان: يا له من أمر فظيع! لقد سرقوا أمودي، لقد اختطفوا صندوق نقودي! من كان هنا؟ أين ذهب اللص؟ كيف أصل إليه؟ أين يختبئ الآن؟ ألن يساعدني أحد؟ ألا يحميني القانون؟ سأشنق العالم أجمع، وإن لم أجد مالي سأشنق نفسي بعدهم!",
      ),
    ],
  ),
  SchoolCategory(
    schoolName: "3. المدرسة الواقعية",
    plays: [
      PlayItem(
        title: "بيت الدمية",
        playwright: "هنريك إبسن",
        description: "ثورة المرأة على القيود الاجتماعية واكتشاف الذات خارج أطر البيت الزوجي الزائف.",
        fullDialogue: "نورا: تورفالد، يجب أن نصفي حساباتنا.. طوال سنوات زواجنا لم نتحدث قط كإنسانين متساويين، بل كنتَ تعاملني كدمية تلعب بها وقت فراغك واليوم أدركت أنني قبل كل شيء إنسانة.. تماماً مثلما أنت إنسان، أو يجب أن تكون كذلك.",
      ),
      PlayItem(
        title: "الأشباح",
        playwright: "هنريك إبسن",
        description: "انهيار الأعراف البورجوازية وملاحقة أخطاء الماضي للأجيال الجديدة.",
        fullDialogue: "هيلين ألوينغ: الأشباح.. إننا جميعاً أشباح يا صديقي. ليس فقط ما ورثناه من آبائنا هو ما يعيش فينا، بل إن كل أفكارهم البائدة وتقاليدهم الميتة تظل تطاردنا من قبر إلى قبر.",
      ),
      PlayItem(
        title: "بستان الكرز",
        playwright: "أنطون تشيخوف",
        description: "أفول الطبقة الارستقراطية وصعود الطبقة البرجوازية الجديدة في روسيا المتغيرة.",
        fullDialogue: "رانيفسكايا: يا بستاني الحبيب.. يا زكاتي ويا بهجة أيامي وصبايا! ها قد عدت إليك أخيراً وكأنني ولدت من جديد. إن أشجارك تزهر كما كانت، ولم تتغير ملامحك.. أوه، لو أن الزمن يستطيع أن يعود بنا إلى الوراء.",
      ),
      PlayItem(
        title: "الخال فانيا",
        playwright: "أنطون تشيخوف",
        description: "خيبة الأمل الإنسانية وضياع العمر في أوهام الأهداف الكاذبة.",
        fullDialogue: "فانيا: لقد ضاع عمري هباءً! لقد كانت حياتي ذكية ومضيئة، وكنت أستطيع أن أكتب أشعاراً عظيمة.. والآن ليس لدي سوى هذا الندم القاتل. يا للهول، كيف لم أدرك من قبل أن العبث يحيط بنا من كل جانب؟",
      ),
    ],
  ),
  SchoolCategory(
    schoolName: "4. المدرسة الطبيعية",
    plays: [
      PlayItem(
        title: "الآنسة جولي",
        playwright: "أغاست ستريندبرغ",
        description: "صراع الطبقات والجنس والوراثة والبيئة في ليلة صيفية واحدة مليئة بالتوتر.",
        fullDialogue: "جولي: انظر إليّ.. ألا ترى كم أنا منهارة وضعيفة أمام إرادتك؟ لقد سقطت كل ألقابي وتلاشت حصوني أمام قسوة الواقع وطبيعتنا البشرية التي تحكمها الغريزة والضعف.",
      ),
      PlayItem(
        title: "الأب",
        playwright: "أغاست ستريندبرغ",
        description: "حرب الأعصاب الضارية داخل الأسرة حول سلطة الأبوة والشك المطلق.",
        fullDialogue: "الكابتن: كيف لي أن أثق بشيء بعد اليوم؟ إن الشك قد نخر عظامي وأصبح هو الحقيقة الوحيدة التي تملكني وتدفعني نحو الجنون المحتوم.",
      ),
      PlayItem(
        title: "نسور صغيرة",
        playwright: "غيرهارت هاوبتمان",
        description: "تصوير مأساوي وعلمي لقسوة الظروف البيئية على الطبقات العاملة.",
        fullDialogue: "العامل: إننا نعمل ليل نهار في هذا الجحيم، ولا نأخذ سوى ما يكفي لنسكت جوع أطفالنا.. إلى متى تظل قوانين الطبيعة قاسية هكذا معنا وحدنا؟",
      ),
    ],
  ),
  SchoolCategory(
    schoolName: "5. مسرح التعبيرية والأمريكي (يوجين أونيل)",
    plays: [
      PlayItem(
        title: "القرد كثيف الشعر",
        playwright: "يوجين أونيل",
        description: "رحلة يانك العامل الميكانيكي في البحث عن انتمائه وسط اغتراب الآلة الصناعية الحديثة.",
        fullDialogue: "يانك: أنا الصلب.. أنا القوة التي تحرك هذا العالم! أنا الفولاذ الذي تبحر به هذه السفينة. فلماذا أنظر في عيونهم فلا أرى سوى الاحتقار؟ أنا لا أتبعهم، بل هم من يتبعون حركتي.. أنا جزء من هذه الآلة الضخمة التي لا تهاب شيئاً.",
      ),
      PlayItem(
        title: "إمبراطور جونز",
        playwright: "يوجين أونيل",
        description: "سقوط الديكتاتور في غياهب النفس البشرية والهلاوس المخيفة في الأدغال.",
        fullDialogue: "بروتوس جونز: من هناك؟ أراكم تختبئون خلف الأشجار.. لن ترهبوني! أنا الإمبراطور هنا ولدي رصاصة فضية واحدة لكل خيال من أخيالي.",
      ),
    ],
  ),
  SchoolCategory(
    schoolName: "6. المسرح الرمزي",
    plays: [
      PlayItem(
        title: "الأعمى",
        playwright: "موريس مترلنك",
        description: "تأمل ميتافيزيقي غامض لمصير الإنسان الضائع في ظلام الكون.",
        fullDialogue: "العميان: أين نحن ذاهبون؟ الليل يحيط بنا من كل جانب، ولا نعلم أين توفي الدليل.. هل من صوت يجيبنا وسط هذا السكون المطبق؟",
      ),
    ],
  ),
  SchoolCategory(
    schoolName: "7. المسرح السريالي",
    plays: [
      PlayItem(
        title: "أوبو ملكاً",
        playwright: "ألفريد جاري",
        description: "سخرية عارمة من السلطة والأنظمة الدكتاتورية بقوالب بصرية غروتيسكية.",
        fullDialogue: "الأب أوبو: أيها الأوغاد جميعاً.. سأقضي عليكم بضربة واحدة من هراوتي الخشنة، ولن يبقى في هذا القصر سواي لآكل وأنام بسلام!",
      ),
    ],
  ),
  SchoolCategory(
    schoolName: "8. مسرح العبث",
    plays: [
      PlayItem(
        title: "في انتظار غودو",
        playwright: "صمويل بيكيت",
        description: "عبثية الانتظار البشري للأمل الغائب وسط فراغ الوجود اليومي.",
        fullDialogue: "فلاديمير: إذن، لا نزال ننتظر؟\nاستراگون: هكذا يبدو الأمر.\nفلاديمير: متحيرون، أليس كذلك؟\nاستراگون: هكذا هو الحال منذ زمن طويل.. لا شيء يتبدل، والشمس تغيب ببطء.",
      ),
      PlayItem(
        title: "المغنية الصلعاء",
        playwright: "يوجين يونسكو",
        description: "تفكيك اللغة اليومية وفقدان التواصل الإنساني في إطار كوميدي عبثي.",
        fullDialogue: "السيدة سميث: إن الزبدة رخيصة اليوم، لكن طقس البارحة كان ممطراً في إنجلترا.. وهذا proves تماماً أن الأبواب مغلقة إذا لم تكن مفتوحة.",
      ),
    ],
  ),
  SchoolCategory(
    schoolName: "9. المسرح الملحمي / البريختي",
    plays: [
      PlayItem(
        title: "الأم شجاعة وأبناؤها",
        playwright: "برتولت بريشت",
        description: "استغلال الحروب والتجارة بأسلوب ملحمي يفصل المتفرج عاطفياً ليحفز عقله نقدياً.",
        fullDialogue: "الأم شجاعة: الحرب تأكل كل شيء، لكنها أيضاً تجلب الرزق لمن يعرف كيف يبيع ويشترى وسط الدمار.. إياكم وأن تفقدوا عربتكم، فهناك دائماً جنود جائعون يحتاجون إلى الخبز والحذاء.",
      ),
      PlayItem(
        title: "دائرة الطباشير القوقازية",
        playwright: "برتولت بريشت",
        description: "تساؤلات حول ملكية الأرض ولمن تكون الأفضلية (لمن يولدها أم لمن يرعاها).",
        fullDialogue: "القاضي أزدك: لتكن الطباشير مرسومة على الأرض.. الأم الحقيقية هي التي تستطيع سحب الطفل من الدائرة، لأن الحب الحقيقي هو الذي يضحي ولا يؤذي.",
      ),
    ],
  ),
  SchoolCategory(
    schoolName: "10. المسرح الوجودي",
    plays: [
      PlayItem(
        title: "الأبواب المغلقة",
        playwright: "جان بول سارتر",
        description: "مقولة 'الجحيم هم الآخرون' وتفاعل النظرات الإنسانية في غرفة مغلقة الأبدية.",
        fullDialogue: "غارسان: الجحيم.. ليس بحاجة لا لنار ولا لكبريت. الجحيم هو الآخرون وعيونهم التي لا تغفل عنا أبداً!",
      ),
      PlayItem(
        title: "كاليغولا",
        playwright: "ألبير كامو",
        description: "عبثية السلطة المطلقة والبحث عن المستحيل في عالم خالٍ من المعنى.",
        fullDialogue: "كاليغولا: إن العالم كما هو، غير قابل للتحمل.. لهذا أنا بحاجة إلى القمر، أو إلى السعادة المستحيلة، أو إلى شيء آخر غير هذا البؤس البشري.",
      ),
    ],
  ),
];

class TextsLibraryScreen extends StatefulWidget {
  const TextsLibraryScreen({Key? key}) : super(key: key);

  @override
  State<TextsLibraryScreen> createState() => _TextsLibraryScreenState();
}

class _TextsLibraryScreenState extends State<TextsLibraryScreen> {
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    List<SchoolCategory> filteredCategories = historicalPlaysDatabase.map((school) {
      var filteredPlays = school.plays.where((play) {
        return play.title.toLowerCase().contains(searchQuery.toLowerCase()) ||
            play.playwright.toLowerCase().contains(searchQuery.toLowerCase()) ||
            school.schoolName.toLowerCase().contains(searchQuery.toLowerCase());
      }).toList();
      return SchoolCategory(schoolName: school.schoolName, plays: filteredPlays);
    }).where((school) => school.plays.isNotEmpty).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("مكتبة النصوص العالمية الأكاديمية"),
        backgroundColor: Colors.black87,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "ابحث عن مسرحية، مؤلف، أو مدرسة...",
                hintStyle: TextStyle(color: Colors.grey[400]),
                prefixIcon: const Icon(Icons.search, color: Colors.amber),
                filled: true,
                fillColor: Colors.grey[900],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredCategories.length,
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
              itemBuilder: (context, index) {
                final category = filteredCategories[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                      child: Text(
                        category.schoolName,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    ...category.plays.map((play) {
                      return Card(
                        elevation: 4,
                        margin: const EdgeInsets.only(bottom: 12),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      play.title,
                                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amberAccent),
                                    ),
                                  ),
                                  Text(
                                    play.playwright,
                                    style: const TextStyle(fontStyle: FontStyle.italic, color: Colors.blueGrey, fontSize: 12),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                play.description,
                                style: const TextStyle(fontSize: 14, height: 1.4),
                              ),
                              const Divider(height: 20),
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.08),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.amber.withOpacity(0.3)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "النص / الحوار الكامل:",
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.amber),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      play.fullDialogue,
                                      style: const TextStyle(fontSize: 13, fontStyle: FontStyle.italic, height: 1.5),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
