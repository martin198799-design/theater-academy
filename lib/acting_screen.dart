class ActingContent {
  final String title;
  final String schoolOrMethod;
  final String comprehensiveStudy;
  final List<String> corePillars;

  ActingContent({
    required this.title,
    required this.schoolOrMethod,
    required this.comprehensiveStudy,
    required this.corePillars,
  });
}

final List<ActingContent> actingDepartmentData = [
  ActingContent(
    title: "فن الأداء التعبيري وإعداد الممثل",
    schoolOrMethod: "مناهج الإعداد الجسدي والنفسي",
    comprehensiveStudy: "الممثل هو الأداة الحيّة الأولى في المسرح؛ يتطلب إعداده تدريباً صارماً للجسد والصوت ليصبحا مرنين وقادرين على نقل أدق الانفعالات والمشاعر الدرامية المعقدة للجمهور بأعلى درجات الصدق الفني.",
    corePillars: [
      "الاسترخاء العضوي والتخلص التام من التشنجات العضلية والنفسية.",
      "التمركز الصوتي وإسقاط الصوت السليم في الفضاء المسرحي الواسع.",
      "تقنيات التركيز وخلق الحضور المسرحي المهيمن (Stage Presence)."
    ],
  ),
  DirectingContent( // أو يمكنك تسميتها ActingContent حسب النموذج الخاص بك
    title: "بناء الشخصية الدرامية وتقنيات تقمص الأدوار",
    schoolOrMethod: "مدرسة الواقعية النفسية",
    comprehensiveStudy: "انتقال الممثل من الشخصية الحقيقية إلى تقمص الشخصية الدرامية يتطلب تفكيك الأبعاد الثلاثة للشخصية (البيولوجية، الاجتماعية، والنفسية) وبناء دوافع خفية تبرر تصرفاتها على الخشب تحت ظروف متخيلة.",
    corePillars: [
      "فهم الهدف الفائق (Super-Objective) للشخصية طوال مسار العرض.",
      "استثمار الذاكرة الشعورية والانفعالية لاستدعاء مشاعر حقيقية في مواقف درامية مشابهة.",
      "التفاعل العضوي والحي مع الشركاء على الخشب بناءً على الفعل ورد الفعل."
    ],
  ),
];
