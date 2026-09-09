import 'package:flutter/material.dart';
import 'theater_models.dart'; // تأكد أن ملف النماذج يحتوي على theaterData

class TextsLibraryScreen extends StatelessWidget {
  const TextsLibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // تحويل القاموس المحلي إلى قائمة لتسهيل العرض
    final sections = theaterData.entries.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('مكتبة النصوص والدراسات المسرحية'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: sections.length,
        itemBuilder: (context, index) {
          final entry = sections[index];
          final sectionKey = entry.key;
          final sectionData = entry.value;

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              title: Text(
                sectionData.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(sectionData.description),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SectionDetailsScreen(
                      sectionTitle: sectionData.title,
                      plays: sectionData.plays,
                      studies: sectionData.studies,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

/// شاشة تفاصيل القسم (تعرض النصوص والدراسات الخاصة به محلياً)
class SectionDetailsScreen extends StatelessWidget {
  final String sectionTitle;
  final List<PlayItem> plays;
  final List<StudyItem> studies;

  const SectionDetailsScreen({
    Key? key,
    required this.sectionTitle,
    required this.plays,
    required this.studies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(sectionTitle),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'النصوص المسرحية', icon: Icon(Icons.menu_book)),
              Tab(text: 'الدراسات والبحوث', icon: Icon(Icons.article)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // تبويب النصوص
            plays.isEmpty
                .isEmptyView('لا توجد نصوص مسرحية مضافة')
                : ListView.builder(
                    itemCount: plays.length,
                    itemBuilder: (context, i) {
                      return ListTile(
                        leading: const Icon(Icons.theater_comedy),
                        title: Text(plays[i].title),
                        subtitle: Text(plays[i].details),
                      );
                    },
                  ),

            // تبويب الدراسات
            studies.isEmpty
                ? const Center(child: Text('لا توجد دراسات مضافة بعد'))
                : ListView.builder(
                    itemCount: studies.length,
                    itemBuilder: (context, i) {
                      return ListTile(
                        leading: const Icon(Icons.library_books),
                        title: Text(studies[i].title),
                        subtitle: Text(studies[i].content),
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }
}

// دالة مساعدة بسيطة للتحقق من القوائم الفارغة
extension on bool {
  Widget isNotEmptyView(String message) {
    return Center(child: Text(message));
  }
}
