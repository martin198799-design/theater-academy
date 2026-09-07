import 'package:flutter/material.dart';

class TextsLibraryScreen extends StatelessWidget {
  const TextsLibraryScreen({super.key});

  final List<Map<String, String>> categories = const [
    {'title': 'المسرح اليوناني والكلاسيكي', 'count': '15 نصاً', 'era': 'العصور القديمة'},
    {'title': 'عصر النهضة والشكسبيري', 'count': '20 نصاً', 'era': 'القرن الـ 16 والـ 17'},
    {'title': 'المسرح الكلاسيكي الجديد والحديث', 'count': '20 نصاً', 'era': 'القرن الـ 18 والـ 19'},
    {'title': 'مسرح الواقعية والرمزية', 'count': '25 نصاً', 'era': 'أواخر القرن 19 وبداية 20'},
    {'title': 'مسرح العبث والطليعي', 'count': '20 نصاً', 'era': 'القرن العشرين'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          'مكتبة النصوص المسرحية',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final cat = categories[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: const Color(0xFF1E1E1E),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.amber.shade800.withOpacity(0.4), width: 1.5),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              title: Text(
                cat['title']!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textDirection: TextDirection.rtl,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text(
                      cat['era']!,
                      style: const TextStyle(color: Colors.white54, fontSize: 13),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.amber.shade800.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        cat['count']!,
                        style: TextStyle(color: Colors.amber.shade400, fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.amber, size: 18),
              onTap: () {
                // الانتقال لقائمة النصوص الخاصة بهذا العصر لاحقاً
              },
            ),
          );
        },
      ),
    );
  }
}
