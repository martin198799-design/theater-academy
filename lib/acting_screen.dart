import 'package:flutter/material.dart';

class DeepActingStudy {
  final String title;
  final String category; // الفلسفة والمدرسة، تقنيات الجسد، علم الصوت، التحليل النفسي
  final String authorOrSchool; // المدرسة أو المنظر (مثل: ستانسلافسكي، غروتوفسكي، برتولت بريشت)
  final String subtitle;
  final String fullStudyContent; // دراسة مطولة وعميقة
  final List<String> keyPillars; // الركائز الأساسية
  final String practicalMasterclass; // ورشة عمل وتمرين متقدم

  DeepActingStudy({
    required this.title,
    required this.category,
    required this.authorOrSchool,
    required this.subtitle,
    required this.fullStudyContent,
    required this.keyPillars,
    required this.practicalMasterclass,
  });
}

final List<DeepActingStudy> deepStudiesDatabase = [
  // 1. الفلسفة والمدرسة
  DeepActingStudy(
    title: "مدرسة الاختبار الداخلي والذاكرة الانفعالية",
    category: "الفلسفة والمدرسة",
    authorOrSchool: "نظام قسطنطين ستانسلافسكي (Stanislavski System)",
    subtitle: "دراسة شاملة في تحويل 'أنا' الممثل إلى 'الشخصية' عبر الصدق العضوي والنفسي.",
    fullStudyContent: "يُعد نظام ستانسلافسكي حجر الأساس للتمثيل الحديث في المسرح والسينما. يرتكز المفهوم الجوهري على أن الممثل لا ينبغي أن يكتفي بالتقليد الخارجي للشكل أو الصوت، بل يجب عليه أن يخلق 'حياة روحية' للشخصية على خشبة المسرح. يعتمد هذا النظام على مفهوم 'الهدف الفائق' (Super-objective) الذي تحارب من أجله الشخصية طوال المسرحية، و'الأفعال الجزئية' التي تقودها دقيقة بدقيقة. عندما يسأل الممثل نفسه بصدق: 'ماذا لو كنت مكان الشخصية في هذا الظرف المحدد؟'، فإنه يستدعي مخزونه التجريبي والذاكرة الانفعالية لإعادة إنتاج ألم، فرح، أو صراع حقيقي لا مجرد تصنّع درامي. إن الوعي بالصمت المسرحي والتفاعل الحي مع الشريك على الخشبة هما المحوران اللذان يمنعان الأداء من الوقوع في فخ الملوحة والافتعال.",
    keyPillars: [
      "الهدف والهدف الفائق (Objective & Super-objective)",
      "فعل 'ماذا لو؟' (The Magic If)",
      "الذاكرة الانفعالية والحسية (Emotional & Sensory Memory)",
      "الإيقاع الداخلي والانسجام مع الشركاء على الخشبة"
    ],
    practicalMasterclass: "اختر مشهداً درامياً صامتاً لمدة 3 دقائق. حدد الهدف الرئيس للشخصية (ماذا تريد بأقصى درجات الإلحاح؟). امشِ في الغرفة دون أن تنطق حرفاً، وكلما واجهت عقبة تخيلية، غيّر استراتيجيتك الجسدية للوصول للهدف تماماً كما تفعل في الحياة الواقعية.",
  ),
  DeepActingStudy(
    title: "المسرح الفقير والجسد المقدس",
    category: "الفلسفة والمدرسة",
    authorOrSchool: "مدرسة يرزي غروتوفسكي (Grotowski's Poor Theatre)",
    subtitle: "دراسة نقدية في الاستغناء عن الديكور والمؤثرات والاكتفاء بجسد الممثل المطلق.",
    fullStudyContent: "يرفض غروتوفسكي مفهوم المسرح الغني المليء بالإضاءة المعقدة والديكورات الضخمة، ليطرح بالمقابل 'المسرح الفقير' حيث العري التام للممثل أمام الجمهور. في هذه المدرسة، يُعتبر جسد الممثل أداة مرنة، حية، وقادرة على التحول المطلق دون الحاجة لأي مساعدات خارجية. يمر الممثل بتدريبات شاقة جداً تُعرف بـ 'Via Negativa' (الطريق السلبي أو التخلّي)، والتي تعني إزالة المعوقات الجسدية والنفسية، والتخلص من التوتر العضلي المزمن، لتنبع الحركة من مركز الجسد (منطقة الحوض وأسفل الظهر). هنا يصبح الصوت رعدياً أو هامساً من خلال استغلال صدى عظام القفص الصدري والجمجمة، وتتحول الإيماءة إلى طقس تعبيري عالي الكثافة يشبه الرقص التعبيري أو المسرح الآسيوي التقليدي.",
    keyPillars: [
      "الطريق السلبي (إزالة العوائق والعادات الجسدية)",
      "جسد الممثل كأداة حية وشاملة (The Total Actor)",
      "التخلي عن الديكور والمكياج لصالح التعبير العضوي الخالص",
      "القدرة على توليد الطاقة الطقسية والتواصل المباشر مع المتفرج"
    ],
    practicalMasterclass: "قم بسلسلة من الحركات الحيوانية المبالغ فيها (حركة قطة برية، ثم نسر، ثم حيوان جريح)، ثم تدرج ببطء حتى تتحول تلك الطاقة الحيوانية إلى مشية بشرية طبيعية تحمل في طياتها نفس التوتر واليقظة الحادة.",
  ),
  
  // 2. تقنيات الجسد والحركة
  DeepActingStudy(
    title: "التشريح الحركي وميكانيكا الفضاء المسرحي",
    category: "تقنيات الجسد",
    authorOrSchool: "دراسة تحليلية أكاديمية في لغة الجسد الدرامية",
    subtitle: "كيف يشغل الممثل المساحة ويخلق كتل بصرية متحركة تعبر عن الصراع.",
    fullStudyContent: "الفضاء المسرحي ليس مساحة هندسية صامتة، بل هو كائن حي يتفاعل مع كتلة الممثل. دراسة حركة الممثل تتطلب فهماً عميقاً لـ 'توزيع الثقل البصري' (Visual Weight). عندما يتحرك الممثل من أسفل المسرح إلى أعلاه، أو يقطع الخشبة قطرياً (Diagonal)، فإنه يرسل رسائل لا وعيّة للمتفرج تحمل معاني الهيمنة، الخضوع، التردد، أو الهجوم. تعتمد التقنيات العميقة للحركة على التحكم في التوتر العضلي (Tone)؛ فالممثل الماهر يستطيع أن ينقل جسده من حالة السيولة المطلقة إلى الصلابة التامة دون أن يفقد توازنه. كما تشمل الدراسة ضبط 'الإيقاع الخارجي' عبر تحديد سرعة وقفة الجسم، وانحناء الرأس، وتوجيه أطراف الأصابع بما يخدم البناء الدرامي للمشهد.",
    keyPillars: [
      "استغلال المستويات الثلاثة للحركة (عالي، متوسط، أرضي)",
      "الخطوط القطرية والدائرية ودلالاتها النفسية",
      "التحكم الكامل في التوتر والاسترخاء العضلي اللحظي",
      "العلاقة الفراغية بين الممثلين (Composition & Blocking)"
    ],
    practicalMasterclass: "قم بأداء مونولوج قصير مع تغيير مسار مشيك ثلاث مرات: المرة الأولى على خطوط مستقيمة وحادة (تعكس العناد)، المرة الثانية بمسارات دائرية وبطيئة (تعكس الحيرة)، المرة الثالثة بالاقتراب الشديد والالتصاق بجدار الخشبة (تعكس الخوف أو الحصار).",
  ),

  // 3. علم الصوت والإلقاء الدرامي
  DeepActingStudy(
    title: "علم الصوت، الإسقاط، وتلوين الطبقات الكلامية",
    category: "علم الصوت",
    authorOrSchool: "دراسة متقدمة في أداء النصوص الشعرية والكلاسيكية",
    subtitle: "تحويل الحرف الصوتي إلى طاقة شعورية تصل إلى أبعد نقطة في القاعة.",
    fullStudyContent: "الصوت البشري في المسرح ليس مجرد وسيلة لنقل الكلمات، بل هو آلة موسيقية معقدة تتكون من أوبرا المشاعر. تتناول هذه الدراسة علم 'التنفس البطني العميق' (Diaphragmatic Breathing) وكيفية استغلال رنانات الجسم (Chest, Nasal, and Skull resonators) لتضخيم الصوت دون إتلاف الحبال الصوتية. عندما يواجه الممثل نصاً شعرياً أو كلاسيكياً (مثل مسرحيات شكسبير أو المسرح الشعري العربي)، يصبح التوقف المؤقت (Caesura) ونبرة الارتفاع والانخفاض (Modulation) هي الأدوات الفاصلة بين الملل والإمتاع الفني. كما يتعلم الممثل كيف يعطي لكل حرف صائت (Vowel) مدته الزمنية الكافية لتحمل الشحنة العاطفية للكلمة دون إسقاط المخارج النحوية والصرفية.",
    keyPillars: [
      "استغلال رنانات الجمجمة والصدر لتضخيم الصوت الطبيعي",
      "فن التوقف المؤقت (Pauses) والصمت الناطق",
      "التحكم في سرعة الإيقاع الصوتي (Tempo & Pace)",
      "وضوح مخارج الحروف العربية الفصحى ونطق الحركات الإعرابية بسلاسة"
    ],
    practicalMasterclass: "اقرأ بيتاً شعرياً قوياً بصوت هامس يملؤه الغضب، ثم كرره بصوت جهوري يملؤه الحزن العارم، واحرص على إطالة الحروف المصوتة (مثل الألف والواو والياء) في الكلمات المفتاحية لملاحظة تأثير الصدى على عظام صدرك.",
  ),

  // 4. التحليل النفسي والشخصية
  DeepActingStudy(
    title: "التشريح النفسي للشخصية وبناء الدافع الخفي",
    category: "التحليل النفسي",
    authorOrSchool: "منهجية تحليل النص والبناء السيكولوجي للشخصية",
    subtitle: "كيف تغوص تحت سطح النص المكتوب لاكتشاف العقد، المخاوف، والسر دفين.",
    fullStudyContent: "النص المسرحي هو مجرد 'قمح الجبل الظاهر'، بينما الأعماق النفسية للشخصية هي الجذر الخفي تحت الأرض. دراسة التحليل النفسي للممثل تحتم عليه قراءة ما بين السطور (Subtext). لماذا تقول الشخصية 'نعم' بينما لغة جسدها وعينيها تصرخ 'لا'؟ تتطلب هذه الدراسة بناء 'السيرة الذاتية السرية' (Secret Biography) للشخصية، متضمنةً: طفولتها، جروحها العميقة، أحلامها المكبوتة، ورعبها الأكبر. هذا البناء النفسي المتكامل يمنح الممثل القدرة على تبرير أي تصرف غريب أو قاسي تقوم به الشخصية على خشبة المسرح، مما يجعل الأداء بعيداً عن السطحية ومقنعاً تماماً للمتفرج المتذوق.",
    keyPillars: [
      "تحليل ما بين السطور (Subtext Analysis)",
      "بناء السيرة الذاتية السرية والخلفية الاجتماعية للشخصية",
      "تحديد العقد النفسية والمحركات اللاواعية",
      "التعامل مع التحولات المفاجئة في مزاج الشخصية (Turning Points)"
    ],
    practicalMasterclass: "اختر شخصية تعاني من صراع داخلي حاد. اكتب في ورقة 5 أسرار لا تقولها الشخصية لأحد في المسرحية، ثم أجرِ مشهداً قصيراً وأنت مضطر لإخفاء هذه الأسرار عن الشخصيات الأخرى طوال الوقت.",
  ),
];

class ActingTechniquesScreen extends StatefulWidget {
  const ActingTechniquesScreen({Key? key}) : super(key: key);

  @override
  State<ActingTechniquesScreen> createState() => _ActingTechniquesScreenState();
}

class _ActingTechniquesScreenState extends State<ActingTechniquesScreen> {
  String selectedCategory = "الكل";
  String searchQuery = "";

  final List<String> categories = [
    "الكل",
    "الفلسفة والمدرسة",
    "تقنيات الجسد",
    "علم الصوت",
    "التحليل النفسي",
  ];

  @override
  Widget build(BuildContext context) {
    List<DeepActingStudy> filteredStudies = deepStudiesDatabase.where((study) {
      bool matchesCategory = selectedCategory == "الكل" || study.category == selectedCategory;
      bool matchesSearch = study.title.toLowerCase().contains(searchQuery.toLowerCase()) ||
          study.authorOrSchool.toLowerCase().contains(searchQuery.toLowerCase()) ||
          study.fullStudyContent.toLowerCase().contains(searchQuery.toLowerCase());
      return matchesCategory && matchesSearch;
    }).toList();

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("أكاديمية التمثيل: الدراسات والأبحاث العميقة"),
          backgroundColor: Colors.black87,
        ),
        body: Column(
          children: [
            // شريط البحث
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
                  hintText: "ابحث في الدراسات، المدارس المسرحية، أو التحليلات العميقة...",
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
            
            // فلترة التصنيفات أفقياً
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final cat = categories[index];
                  bool isSelected = selectedCategory == cat;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: ChoiceChip(
                      label: Text(cat),
                      selected: isSelected,
                      selectedColor: Colors.amber,
                      backgroundColor: Colors.grey[900],
                      labelStyle: TextStyle(
                        color: isSelected ? Colors.black : Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      onSelected: (selected) {
                        setState(() {
                          selectedCategory = cat;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 8),

            // قائمة الدراسات العميقة
            Expanded(
              child: ListView.builder(
                itemCount: filteredStudies.length,
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
                itemBuilder: (context, index) {
                  final study = filteredStudies[index];
                  return Card(
                    elevation: 6,
                    margin: const EdgeInsets.only(bottom: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    color: const Color(0xFF161616),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  study.title,
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amberAccent),
                                ),
                              ),
                              Chip(
                                label: Text(
                                  study.category,
                                  style: const TextStyle(fontSize: 11, color: Colors.black, fontWeight: FontWeight.bold),
                                ),
                                backgroundColor: Colors.amber,
                                padding: EdgeInsets.zero,
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text(
                            study.authorOrSchool,
                            style: const TextStyle(fontSize: 13, color: Colors.amber, fontStyle: FontStyle.italic),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            study.subtitle,
                            style: const TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w600),
                          ),
                          const Divider(color: Colors.grey, height: 24),
                          
                          // النص الأكاديمي المطول والعميق
                          Text(
                            study.fullStudyContent,
                            style: const TextStyle(fontSize: 13.5, color: Colors.white70, height: 1.6),
                          ),
                          const SizedBox(height: 16),

                          // الركائز الأساسية
                          const Text(
                            "الركائز والمفاهيم الجوهرية:",
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.amberAccent),
                          ),
                          const SizedBox(height: 8),
                          ...study.keyPillars.map((pillar) => Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("• ", style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold)),
                                Expanded(
                                  child: Text(
                                    pillar,
                                    style: const TextStyle(fontSize: 12.5, color: Colors.white70),
                                  ),
                                ),
                              ],
                            ),
                          )),
                          
                          const SizedBox(height: 14),
                          // ورشة العمل والماستر كلاس التطبيقي
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: Colors.amber.withOpacity(0.08),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.amber.withOpacity(0.3)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Icon(Icons.theater_comedy, size: 16, color: Colors.amber),
                                    SizedBox(width: 6),
                                    Text(
                                      "ورشة عمل وتمرين أكاديمي (Masterclass):",
                                      style: TextStyle(fontSize: 12.5, fontWeight: FontWeight.bold, color: Colors.amber),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  study.practicalMasterclass,
                                  style: const TextStyle(fontSize: 12.5, fontStyle: FontStyle.italic, color: Colors.white70, height: 1.5),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
