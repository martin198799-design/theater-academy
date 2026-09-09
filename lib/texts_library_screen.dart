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
                    child: InkWell(
                      onTap: () {
                        // الانتقال لصفحة قراءة النص الكامل (تأخذ الشاشة كاملة لسهولة القراءة)
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlayReaderScreen(play: play),
                          ),
                        );
                      },
                      borderRadius: BorderRadius.circular(12),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    play.title,
                                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    'المؤلف: ${play.details}',
                                    style: const TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    play.description,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(color: Colors.white70),
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    'اضغط لقراءة النص الكامل...',
                                    style: TextStyle(fontSize: 12, color: Colors.blueAccent, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            const Icon(Icons.picture_as_pdf, color: Colors.redAccent, size: 36),
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

// شاشة قراءة النص الكامل للمسرحية
class PlayReaderScreen extends StatelessWidget {
  final PlayItem play;

  const PlayReaderScreen({Key? key, required this.play}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(play.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              play.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.indigoAccent),
            ),
            const SizedBox(height: 8),
            Text(
              'المؤلف: ${play.details}',
              style: const TextStyle(fontSize: 16, color: Colors.blueAccent, fontWeight: FontWeight.bold),
            ),
            const Divider(height: 24, thickness: 1),
            Text(
              play.description,
              style: const TextStyle(fontSize: 18, height: 1.8),
            ),
          ],
        ),
      ),
    );
  }
}
