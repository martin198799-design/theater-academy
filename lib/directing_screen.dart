import 'package:flutter/material.dart';
import 'theater_models.dart'; // استدعاء ملف البيانات

class DirectingScreen extends StatelessWidget {
  const DirectingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // جلب بيانات قسم الإخراج من ملف theater_models.dart
    final section = theaterData['direction']!;

    return Scaffold(
      appBar: AppBar(
        title: Text(section.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              section.description,
              style: const TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: section.studies.length,
                itemBuilder: (context, index) {
                  final study = section.studies[index];
                  return Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    child: InkWell(
                      onTap: () {
                        // إظهار المقال أو الدراسة كاملة عند الضغط
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text(study.title),
                            content: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: SingleChildScrollView(
                                child: Text(
                                  study.content,
                                  style: const TextStyle(fontSize: 16, height: 1.8),
                                ),
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('إغلاق', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        );
                      },
                      borderRadius: BorderRadius.circular(12),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              study.title,
                              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigoAccent),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              study.content,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 14, color: Colors.white70),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'اضغط لقراءة الدراسة كاملة...',
                              style: TextStyle(fontSize: 12, color: Colors.blueAccent, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
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
