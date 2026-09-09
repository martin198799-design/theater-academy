import 'package:flutter/material.dart';
import 'theater_models.dart';

class SectionScreenTemplate extends StatelessWidget {
  final String sectionKey;
  final String defaultTitle;

  const SectionScreenTemplate({
    Key? key,
    required this.sectionKey,
    required this.defaultTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final section = theaterData[sectionKey];
    final studies = section?.studies ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text(section?.title ?? defaultTitle),
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
                itemCount: studies.length,
                itemBuilder: (context, index) {
                  final study = studies[index];
                  return Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text(study.title),
                            content: SingleChildScrollView(
                              child: Text(
                                study.content,
                                style: const TextStyle(fontSize: 16, height: 1.6),
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('إغلاق'),
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
                              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo),
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
                              'اضغط للقراءة الكاملة...',
                              style: TextStyle(fontSize: 12, color: Colors.blueAccent),
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
