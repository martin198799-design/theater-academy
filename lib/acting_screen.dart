import 'package:flutter/material.dart';

class DeepActingStudy {
  final String title;
  final String category;
  final String authorOrSchool;
  final String subtitle;
  final String fullStudyContent;
  final List<String> keyPillars;
  final String practicalMasterclass;

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
  DeepActingStudy(
    title: "مدرسة الاختبار الداخلي والذاكرة الانفعالية",
    category: "الفلسفة والمدرسة",
    authorOrSchool: "نظام قسطنطين ستانسلافسكي (Stanislavski System)",
    subtitle: "دراسة شاملة في تحويل 'أنا' الممثل إلى 'الشخصية' عبر الصدق العضوي والنفسي.",
    fullStudyContent: "يُعد نظام ستانسلافسكي حجر الأساس للتمثيل الحديث في المسرح والسينما. يرتكز المفهوم الجوهري على أن الممثل لا ينبغي أن يكتفي بالتقليد الخارجي للشكل أو الصوت، بل يجب عليه أن يخلق 'حياة روحية' للشخصية على خشبة المسرح. يعتمد هذا النظام على مفهوم 'الهدف الفائق' (Super-objective) و'الأفعال الجزئية'. عندما يسأل الممثل نفسه بصدق: 'ماذا لو كنت مكان الشخصية؟'، فإنه يستدعي مخزونه التجريبي والذاكرة الانفعالية لإعادة إنتاج ألم أو فرح حقيقي.",
    keyPillars: [
      "الهدف والهدف الفائق (Objective & Super-objective)",
      "فعل 'ماذا لو؟' (The Magic If)",
      "الذاكرة الانفعالية والحسية (Emotional & Sensory Memory)",
      "الإيقاع الداخلي والانسجام مع الشركاء على الخشبة"
    ],
    practicalMasterclass: "اختر مشهداً صامتاً لمدة 3 دقائق. حدد الهدف الرئيس للشخصية، وامشِ في الغرفة دون أن تنطق حرفاً، وكلما واجهت عقبة تخيلية، غيّر استراتيجيتك الجسدية.",
  ),
  DeepActingStudy(
    title: "المسرح الفقير والجسد المقدس",
    category: "تقنيات الجسد",
    authorOrSchool: "مدرسة يرزي غروتوفسكي (Grotowski's Poor Theatre)",
    subtitle: "دراسة نقدية في الاستغناء عن الديكور والمؤثرات والاكتفاء بجسد الممثل المطلق.",
    fullStudyContent: "يرفض غروتوفسكي المسرح الغني ليطرح 'المسرح الفقير' حيث العري التام للممثل أمام الجمهور. في هذه المدرسة، يُعتبر جسد الممثل أداة مرنة وحية قادرة على التحول المطلق. يمر الممثل بتدريبات شاقة لإزالة المعوقات الجسدية والنفسية والتخلص من التوتر العضلي، لتنبع الحركة من مركز الجسد.",
    keyPillars: [
      "الطريق السلبي (إزالة العوائق والعادات الجسدية)",
      "جسد الممثل كأداة حية وشاملة (The Total Actor)",
      "التخلي عن الديكور والمكياج لصالح التعبير العضوي",
      "القدرة على توليد الطاقة الطقسية والتواصل المباشر مع المتفرج"
    ],
    practicalMasterclass: "قم بسلسلة من الحركات الحيوانية المبالغ فيها، ثم تدرج ببطء حتى تتحول تلك الطاقة الحيوانية إلى مشية بشرية طبيعية تحمل نفس التوتر.",
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

  final List<String> categories = ["الكل", "الفلسفة والمدرسة", "تقنيات الجسد"];

  @override
  Widget build(BuildContext context) {
    List<DeepActingStudy> filteredStudies = deepStudiesDatabase.where((study) {
      bool matchesCategory = selectedCategory == "الكل" || study.category == selectedCategory;
      bool matchesSearch = study.title.toLowerCase().contains(searchQuery.toLowerCase()) ||
          study.authorOrSchool.toLowerCase().contains(searchQuery.toLowerCase());
      return matchesCategory && matchesSearch;
    }).toList();

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("أكاديمية التمثيل والتقنيات"),
          backgroundColor: Colors.black87,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                onChanged: (value) => setState(() => searchQuery = value),
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "ابحث في الدراسات والتقنيات...",
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
                itemCount: filteredStudies.length,
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
                          Text(
                            study.title,
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amberAccent),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            study.authorOrSchool,
                            style: const TextStyle(fontSize: 13, color: Colors.amber, fontStyle: FontStyle.italic),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            study.fullStudyContent,
                            style: const TextStyle(fontSize: 13.5, color: Colors.white70, height: 1.6),
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
