import 'package:flutter/material.dart';

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
    title: "فن الأداء التمثيلي وبناء الشخصية",
    schoolOrMethod: "منهج الواقعية النفسية",
    comprehensiveStudy: "التمثيل المسرحي هو تجسيد حي لشخصية الدراما عبر الأدوات الجسدية والصوتية والنفسية.",
    corePillars: ["الصدق الشعوري والذاكرة الانفعالية.", "التحكم في إيقاع الجسد والصوت."],
  ),
];

class ActingScreen extends StatelessWidget {
  const ActingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("قسم التمثيل المسرحي"), backgroundColor: Colors.black87),
      body: ListView.builder(
        itemCount: actingDepartmentData.length,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, index) {
          final item = actingDepartmentData[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber)),
                  const SizedBox(height: 8),
                  Text(item.schoolOrMethod, style: const TextStyle(fontStyle: FontStyle.italic)),
                  const Divider(),
                  Text(item.comprehensiveStudy),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
