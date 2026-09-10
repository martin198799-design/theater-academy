import 'package:flutter/material.dart';

class DeepActingStudy {
  final String title;
  final String category;
  final String authorOrSchool;
  final String fullStudyContent;

  DeepActingStudy({
    required this.title,
    required this.category,
    required this.authorOrSchool,
    required this.fullStudyContent,
  });
}

final List<DeepActingStudy> deepStudiesDatabase = [
  DeepActingStudy(
    title: "مدرسة الاختبار الداخلي والذاكرة الانفعالية",
    category: "الفلسفة والمدرسة",
    authorOrSchool: "نظام قسطنطين ستانسلافسكي",
    fullStudyContent: "يُعد نظام ستانسلافسكي حجر الأساس للتمثيل الحديث، حيث يعتمد على خلق حياة روحية للشخصية والصدق العضوي والنفسي.",
  ),
  DeepActingStudy(
    title: "المسرح الفقير والجسد المقدس",
    category: "تقنيات الجسد",
    authorOrSchool: "مدرسة يرزي غروتوفسكي",
    fullStudyContent: "يرفض المسرح الفقير الديكور المعقد مكتفياً بجسد الممثل المطلق كأداة حية وقوية للتعبير الطقسي.",
  ),
];

class ActingTechniquesScreen extends StatefulWidget {
  const ActingTechniquesScreen({Key? key}) : super(key: key);

  @override
  State<ActingTechniquesScreen> createState() => _ActingTechniquesScreenState();
}

class _ActingTechniquesScreenState extends State<ActingTechniquesScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("أكاديمية التمثيل والتقنيات"),
          backgroundColor: Colors.black87,
        ),
        body: ListView.builder(
          itemCount: deepStudiesDatabase.length,
          padding: const EdgeInsets.all(12.0),
          itemBuilder: (context, index) {
            final study = deepStudiesDatabase[index];
            return Card(
              color: const Color(0xFF161616),
              margin: const EdgeInsets.only(bottom: 16),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      study.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.amberAccent,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      study.authorOrSchool,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.amber,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      study.fullStudyContent,
                      style: const TextStyle(
                        fontSize: 13.5,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        backgroundColor: const Color(0xFF121212),
      ),
    );
  }
}
