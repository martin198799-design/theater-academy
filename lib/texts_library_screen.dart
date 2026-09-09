import 'package:flutter/material.dart';
import 'theater_models.dart';

class TextsLibraryScreen extends StatelessWidget {
  const TextsLibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final section = theaterData['texts'];
    final plays = section?.plays ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text(section?.title ?? 'مكتبة النصوص المسرحية'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              section?.description ?? '',
              style: const TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: plays.length,
                itemBuilder: (context, index) {
                  final play = plays[index];
                  return Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16),
                      title: Text(
                        play.title,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 6),
                          Text(
                            'المؤلف: ${play.details}',
                            style: const TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 6),
                          Text(play.description),
                        ],
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.picture_as_pdf, color: Colors.redAccent),
                        onPressed: () {
                          // هنا سيتم ربط خاصية تحميل وقراءة النص الكامل PDF
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('جاري فتح النص الكامل لـ: ${play.title}')),
                          );
                        },
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
