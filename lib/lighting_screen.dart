class LightingContent {
  final String title;
  final String schoolOrMethod;
  final String comprehensiveStudy;
  final List<String> corePillars;

  LightingContent({
    required this.title,
    required this.schoolOrMethod,
    required this.comprehensiveStudy,
    required this.corePillars,
  });
}

final List<LightingContent> lightingDepartmentData = [
  LightingContent(
    title: "دراماتورجيا الإضاءة وتشكيل الظل والنور",
    schoolOrMethod: "أساطير وأساليب الإضاءة التعبيرية",
    comprehensiveStudy: "الإضاءة في المسرح الحديث ليست مجرد أداة لإظهار الممثل الخفي، بل هي لغة بصرية مستقلة ترسم الحالة المزاجية والتراجيدية للمشهد، وتتحكم في إيقاع التلقي البصري للجمهور عبر توظيف الظلال والكتل الضوئية.",
    corePillars: [
      "التباين المدروس بين الضوء والظلال العميقة لتجسيد الصراع النفسي للشخصيات.",
      "توظيف درجات حرارة الألوان (الباردة والدافئة) للدلالة على الزمن والحالة النفسية.",
      "توجيه بؤر الاهتمام البصري وخلق التكوين الدرامي المتحرك على الخشب."
    ],
  ),
  LightingContent(
    title: "السينوغرافيا الضوئية والديناميكية البصرية",
    schoolOrMethod: "جماليات الإضاءة المعاصرة",
    comprehensiveStudy: "التعامل مع الضوء كمادة تشكيلية صلبة ومرنة في آن واحد، تتفاعل مع حركة الممثلين وديكور الخشبة لتخلق فضاءً درامياً متكاملاً يعبر عن الأبعاد الفلسفية والباطنية للنص.",
    corePillars: [
      "توزيع وحدات الإضاءة لتوليد الإيقاع البصري والزمني المناسب للأحداث.",
      "الربط العضوي بين تغيرات الإضاءة وتحولات الحبكة الدرامية.",
      "التحكم في مستويات الكثافة والسطوع للتعبير عن التحولات العاطفية."
    ],
  ),
];
