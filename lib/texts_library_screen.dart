import 'package:flutter/material.dart';
import 'theater_models.dart';

class TextsLibraryScreen extends StatelessWidget {
  const TextsLibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // جلب النصوص المسرحية من القائمة المتخصصة المعتمدة في النظام الجديد
    final plays = departmentContents['مكتبة النصوص المسرحية العالمية'] ?? [];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFF121214),
        appBar: AppBar(
          backgroundColor: const Color(0xFF1E1E24),
          title: const Text(
            'مكتبة النصوص المسرحية العالمية',
            style: TextStyle(color: Colors.white, fontSize: 18),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          play.title,
                          style: const TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          play.category,
                          style: const TextStyle(color: Colors.blueAccent, fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'المؤلف: ${play.authorOrSpecialist}',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    play.summary,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 12),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => Directionality(
                          textDirection: TextDirection.rtl,
                          child: AlertDialog(
                            backgroundColor: const Color(0xFF1E1E24),
                            title: Text(play.title, style: const TextStyle(color: Colors.white)),
                            content: SingleChildScrollView(
                              child: Text(
                                play.detailedContent,
                                style: const TextStyle(color: Colors.white70, height: 1.6),
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
