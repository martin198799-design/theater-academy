import 'package:flutter/material.dart';
import 'theater_models.dart'; // استدعاء البيانات المركزية

class TextsLibraryScreen extends StatelessWidget {
  const TextsLibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // ضمان اتجاه اليمين لليسار لكل الشاشة
      child: Scaffold(
        appBar: AppBar(
          title: const Text('مكتبة النصوص المسرحية العالمية'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'أرشيف أكاديمي شامل يضم عيون الدراما العالمية والمدارس الكبرى بالنصوص الكاملة',
                style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.builder(
                  itemCount: globalTheaterPlays.length,
                  itemBuilder: (context, index) {
                    final play = globalTheaterPlays[index];
                    return Card(
                      elevation: 3,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: InkWell(
                        onTap: () {
                          // فتح نافذة القراءة الكاملة للنص المسرحي
                          showDialog(
                            context: context,
                            builder: (context) => Directionality(
                              textDirection: TextDirection.rtl,
                              child: AlertDialog(
                                title: Text(play.title),
                                content: SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.9,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'المؤلف: ${play.author} | المدرسة: ${play.school}',
                                          style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.indigoAccent,
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                        Text(
                                          play.fullText,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            height: 1.8,
                                          ),
                                          textAlign: TextAlign.right, // إصلاح اصطفاف النص وعلامات الترقيم بدقة
                                        ),
                                      ],
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
                            ),
                          );
                        },
                        borderRadius: BorderRadius.circular(12),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      play.title,
                                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigoAccent),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.indigo.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Text(
                                      play.school,
                                      style: const TextStyle(fontSize: 11, color: Colors.indigo, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'المؤلف: ${play.author}',
                                style: const TextStyle(fontSize: 13, color: Colors.blueGrey),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                play.description,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(fontSize: 14, color: Colors.white70),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'اضغط لقراءة النص المسرحي كاملاً...',
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
      ),
    );
  }
}
