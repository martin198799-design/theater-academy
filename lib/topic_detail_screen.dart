import 'package:flutter/material.dart';

class TopicDetailScreen extends StatelessWidget {
  final String title;
  final String description;
  final String category;
  final Color themeColor;

  const TopicDetailScreen({
    super.key,
    required this.title,
    required this.description,
    required this.category,
    required this.themeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
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
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textDirection: TextDirection.rtl,
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white10),
              ),
              child: Text(
                description,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                  height: 1.6,
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'الدراسة والتحليل الأكاديمي:',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textDirection: TextDirection.rtl,
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: themeColor.withOpacity(0.3)),
              ),
              child: const Text(
                'يُعتبر هذا المحور ركيزة أساسية ضمن المناهج الأكاديمية المسرحية الحديثة. يتناول التطبيق العملي والنظري لهذه الجزئية لتمكين الباحث والممارس من استيعاب الأبعاد الفنية، الجمالية، والفلسفية المرتبطة بالعرض المسرحي وتطوير أدواته الإبداعية.',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 14,
                  height: 1.7,
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
