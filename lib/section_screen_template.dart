import 'package:flutter/material.dart';
import 'theater_models.dart';
import 'topic_detail_screen.dart';

class SectionScreenTemplate extends StatelessWidget {
  final String sectionTitle;

  const SectionScreenTemplate({Key? key, required this.sectionTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // خريطة تربط عناوين الأقسام بمصادر البيانات الصحيحة من TheaterData
    final Map<String, List<TheaterItem>> departmentContents = {
      "قسم الإخراج المسرحي": TheaterData.directingDept,
      "قسم التمثيل": TheaterData.actingDept,
      "قسم الإضاءة المسرحية": TheaterData.lightingDept,
      "قسم السينوغرافيا": TheaterData.scenographyDept,
      "قسم الأزياء والمكياج": TheaterData.costumesDept,
      "مكتبة النصوص المسرحية العالمية": TheaterData.textsLibrary,
    };

    final List<TheaterItem> items = departmentContents[sectionTitle] ?? TheaterData.textsLibrary;

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F1F2C),
        title: Text(sectionTitle, style: const TextStyle(color: Colors.white, fontSize: 18)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            color: const Color(0xFF1F1F2C),
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TopicDetailScreen(item: item),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (item.category.isNotEmpty)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          item.category,
                          style: const TextStyle(color: Colors.blueAccent, fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    if (item.category.isNotEmpty) const SizedBox(height: 10),
                    Text(
                      item.title,
                      style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      item.briefDescription,
                      style: const TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "قراءة الدراسة والتحليل الأكاديمي...",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
