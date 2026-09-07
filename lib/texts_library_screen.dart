import 'package:flutter/material.dart';
import 'topic_detail_screen.dart';

class TextsLibraryScreen extends StatelessWidget {
  const TextsLibraryScreen({super.key});

  final List<Map<String, String>> textsTopics = const [
    {
      'title': 'تحليل البنية الدرامية للنص',
      'description': 'دراسة العقدة، الذروة، الصراع، وتطور الأحداث من البداية حتى النهاية.',
      'category': 'التحليل الدرامي'
    },
    {
      'title': 'المسرح العالمي والكلاسيكي',
      'description': 'قراءة في أعمال شكسپير، موليير، والمسرح اليوناني القديم وأبعادها الخالدة.',
      'category': 'التراث المسرحي'
    },
    {
      'title': 'المسرح العربي المعاصر',
      'description': 'استعراض لأبرز النصوص والمدارس المسرحية العربية وتطوراتها الفكرية.',
      'category': 'المسرح العربي'
    },
    {
      'title': 'فن كتابة الحوار المسرحي',
      'description': 'كيفية خلق حوار مشحون بالدلالات ويعكس الصراع الداخلي للشخصيات.',
      'category': 'الكتابة التأليفية'
    },
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
        itemCount: textsTopics.length,
        itemBuilder: (context, index) {
          final topic = textsTopics[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicDetailScreen(
                    title: topic['title']!,
                    description: topic['description']!,
                    category: topic['category']!,
                    themeColor: Colors.cyan,
                  ),
                ),
              );
            },
            borderRadius: BorderRadius.circular(16),
            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.cyan.shade700.withOpacity(0.4), width: 1.5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      textDirection: TextDirection.rtl,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.cyan.shade900.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            topic['category']!,
                            style: TextStyle(color: Colors.cyan.shade300, fontSize: 11),
                          ),
                        ),
                        Icon(Icons.menu_book_rounded, color: Colors.cyan.shade400, size: 22),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      topic['title']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      topic['description']!,
                      style: const TextStyle(
                        color: Colors.white54,
                        fontSize: 13,
                        height: 1.4,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
