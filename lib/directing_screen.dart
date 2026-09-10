import 'package:flutter/material.dart';

// نموذج البيانات الخاص بالقسم
class DirectingContent {
  final String title;
  final String schoolOrMethod;
  final String comprehensiveStudy;
  final List<String> corePillars;

  DirectingContent({
    required this.title,
    required this.schoolOrMethod,
    required this.comprehensiveStudy,
    required this.corePillars,
  });
}

// قائمة البيانات
final List<DirectingContent> directingDepartmentData = [
  DirectingContent(
    title: "فلسفة الرؤية الإخراجية وتطور المنهج الحديث",
    schoolOrMethod: "من المنهج الكلاسيكي إلى التجريب المعاصر",
    comprehensiveStudy: "يُعد المخرج المسرحي المعماري الأول للعمل الفني وربان السفينة الذي يترجم النص الأدبي إلى رؤية بصرية وحركية تنبض بالحياة على الخشب.",
    corePillars: [
      "تفكيك النص المسرحي واستنطاق دلالاته الخفية.",
      "خلق المفهوم الإخراجي الموحد (Concept) الذي يحكم إيقاع العرض.",
    ],
  ),
  DirectingContent(
    title: "إدارة الممثل وتوجيه البروفات",
    schoolOrMethod: "منهجية ستانسلافسكي ومایرهولد",
    comprehensiveStudy: "تمثل البروفات المختبر الحقيقي الذي يتولد فيه السحر المسرحي.",
    corePillars: [
      "بناء الذاكرة الانفعالية وتوجيه طاقة الممثل بدقة.",
      "توحيد الإيقاع الجماعي لفريق العمل.",
    ],
  ),
];

// واجهة عرض الشاشة
class DirectingScreen extends StatelessWidget {
  const DirectingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("قسم الإخراج المسرحي"),
        backgroundColor: Colors.black87,
      ),
      body: ListView.builder(
        itemCount: directingDepartmentData.length,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, index) {
          final item = directingDepartmentData[index];
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
