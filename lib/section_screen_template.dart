import 'package:flutter/material.dart';
import 'theater_models.dart';

class SectionScreenTemplate extends StatelessWidget {
  final String sectionTitle;

  const SectionScreenTemplate({
    Key? key,
    required this.sectionTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // عرض جميع المسرحيات المدرجة في القاعدة الشاملة لضمان عدم ضياع أي عمل
    final List<PlayItem> plays = globalTheaterPlays;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFF121214),
        appBar: AppBar(
          backgroundColor: const Color(0xFF1E1E24),
          title: Text(
            sectionTitle,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: plays.length,
          itemBuilder: (context, index) {
            final play = plays[index];
            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E24),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    play.title,
                    style: const TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'المؤلف: ${play.author} | التصنيف: ${play.school}',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    play.description,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 12),
                  InkWell(
                    onTap: () {
                      // فتح النص الكامل للمسرحية
                      showDialog(
                        context: context,
                        builder: (context) => Directionality(
                          textDirection: TextDirection.rtl,
                          child: AlertDialog(
                            backgroundColor: const Color(0xFF1E1E24),
                            title: Text(play.title, style: const TextStyle(color: Colors.white)),
                            content: SingleChildScrollView(
                              child: Text(
                                play.fullText,
                                style: const TextStyle(color: Colors.white70, height: 1.5),
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('إغلاق', style: TextStyle(color: Colors.blueAccent)),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'اضغط لقراءة النص المسرحي كاملاً...',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
