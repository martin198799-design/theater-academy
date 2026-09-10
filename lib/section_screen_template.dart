import 'package:flutter/material.dart';
import 'theater_models.dart'; // استيراد ملف النماذج والبيانات

class SectionDetailScreen extends StatelessWidget {
  final String departmentTitle;
  final List<dynamic> items; // يستقبل قائمة المحتوى الخاصة بالقسم

  const SectionDetailScreen({
    Key? key,
    required this.departmentTitle,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(departmentTitle),
        backgroundColor: Colors.black87,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    item.schoolOrMethod,
                    style: TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[400],
                    ),
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
