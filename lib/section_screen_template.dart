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
    String titleTrimmed = sectionTitle.trim();

    // فلترة ذكية ودقيقة بناءً على اسم القسم تماماً
    List<PlayItem> plays = globalTheaterPlays.where((play) {
      if (titleTrimmed.contains('الإخراج')) {
        // قسم الإخراج يعرض أعمالاً درامية متنوعة (مثل تشيخوف، أو بيكيت، أو شكسبير)
        return play.school.contains('الكلاسيكي') || play.school.contains('العبث') || play.school.contains('الملحمي');
      } else if (titleTrimmed.contains('التمثيل')) {
        // قسم التمثيل
        return play.title == 'هاملت' || play.title == 'عطيل' || play.title == 'مكبث';
      } else if (titleTrimmed.contains('السينوغرافيا') || titleTrimmed.contains('الديكور')) {
        // قسم السينوغرافيا والديكور
        return play.school.contains('التعبيرية') || play.school.contains('الرمزي') || play.school.contains('الكلاسيكي');
      } else if (titleTrimmed.contains('الأزياء') || titleTrimmed.contains('المكياج')) {
        // قسم الأزياء والمكياج
        return play.school.contains('الكلاسيكي') || play.school.contains('الملحمي');
      } else if (titleTrimmed.contains('الإضاءة')) {
        // قسم الإضاءة المسرحية
        return play.school.contains('العبث') || play.school.contains('التعبيرية') || play.school.contains('الكلاسيكي');
      }
      
      // إذا كان القسم عاماً أو "مكتبة النصوص المسرحية العالمية"
      return true;
    }).toList();

    // إذا كانت القائمة المفلترة فارغة لأي سبب، نعرض القائمة الكاملة لضمان عدم ظهور شاشة فارغة أبداً
    if (plays.isEmpty) {
      plays = globalTheaterPlays;
    }

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
