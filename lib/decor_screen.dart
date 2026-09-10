import 'package:flutter/material.dart';

class DecorContent {
  final String title;
  final String schoolOrMethod;
  final String comprehensiveStudy;
  final List<String> corePillars;

  DecorContent({
    required this.title,
    required this.schoolOrMethod,
    required this.comprehensiveStudy,
    required this.corePillars,
  });
}

final List<DecorContent> decorDepartmentData = [
  DecorContent(
    title: "تصميم وتنفيذ الديكور المسرحي والكتل الفراغية",
    schoolOrMethod: "العمارة المسرحية والتشكيل الفضائي",
    comprehensiveStudy: "الديكور المسرحي هو البيئة المادية المحسوسة التي تتحرك ضمنها الشخصيات لتعكس الأبعاد الواقعية أو الرمزية للنص.",
    corePillars: [
      "توزيع الكتل الضخمة والخفيفة لتحقيق التوازن البصري.",
      "ملاءمة الديكور لطبيعة الحركة الإخراجية وسهولة تنقل الممثلين.",
    ],
  ),
];

class DecorScreen extends StatelessWidget {
  const DecorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("قسم الديكور المسرحي"),
        backgroundColor: Colors.black87,
      ),
      body: ListView.builder(
        itemCount: decorDepartmentData.length,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, index) {
          final item = decorDepartmentData[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    item.schoolOrMethod,
                    style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey[400]),
                  ),
                  const Divider(height: 20),
                  Text(
                    item.comprehensiveStudy,
                    style: const TextStyle(fontSize: 15, height: 1.5),
                  ),
                  const SizedBox(height: 12),
                  ...item.corePillars.map<Widget>((pillar) => Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("• ", style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold)),
                            Expanded(child: Text(pillar, style: const TextStyle(fontSize: 14))),
                          ],
                        ),
                      )).toList(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
