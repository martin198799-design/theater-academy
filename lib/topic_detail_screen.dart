import 'package:flutter/material.dart';

class TopicDetailScreen extends StatelessWidget {
  final String title;
  final String description;
  final String category;
  final String detailedContent;
  final Color themeColor;
  final bool isPlayText; // للتمييز بين النص المسرحي والدراسة الأكاديمية

  const TopicDetailScreen({
    super.key,
    required this.title,
    required this.description,
    required this.category,
    required this.detailedContent,
    required this.themeColor,
    this.isPlayText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          overflow: TextOverflow.ellipsis,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          textDirection: TextDirection.rtl,
          children: [
            // تصنيف المحتوى
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: themeColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: themeColor.withOpacity(0.5)),
              ),
              child: Text(
                category,
                style: TextStyle(color: themeColor, fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            // عنوان الموضوع
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textDirection: TextDirection.rtl,
            ),
            const SizedBox(height: 12),
            // نبذة أو وصف تعريفي
            Text(
              description,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
                height: 1.5,
              ),
              textDirection: TextDirection.rtl,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Divider(color: Colors.white24, thickness: 1),
            ),
            // العنوان الفرعي للمحتوى الموسع
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Icon(
                  isPlayText ? Icons.menu_book_rounded : Icons.article_rounded,
                  color: Colors.amber,
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  isPlayText ? 'النص المسرحي الكامل (ترجمة عربية معتمدة):' : 'الدراسة الأكاديمية والتحليل المفصل:',
                  style: const TextStyle(
                    color: Colors.amber,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
            const SizedBox(height: 16),
            // صندوق المحتوى الرئيسي الكامل
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: themeColor.withOpacity(0.3), width: 1.5),
              ),
              child: Text(
                detailedContent,
                style: const TextStyle(
                  color: Colors.white90,
                  fontSize: 15,
                  height: 1.9, // تباعد أسطر مريح للقراءة المطولة
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
