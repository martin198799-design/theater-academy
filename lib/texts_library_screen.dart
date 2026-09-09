import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
'models/theater_models.dart'; // تأكد من مطابقة مسار النماذج لديك

class TextsLibraryScreen extends StatelessWidget {
  const TextsLibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مكتبة النصوص والدراسات المسرحية'),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        // جلب الأقسام (المدارس المسرحية) مرتبة حسب الحقل order
        stream: FirebaseFirestore.instance
            .collection('schools')
            .orderBy('order')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text('حدث خطأ أثناء تحميل البيانات'));
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          final docs = snapshot.data!.docs;
          if (docs.isEmpty) {
            return const Center(
              child: Text(
                'لا توجد أقسام مضافة حالياً',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            );
          }

          return ListView.builder(
            itemCount: docs.length,
            itemBuilder: (context, index) {
              final data = docs[index].data() as Map<String, dynamic>;
              final schoolId = docs[index].id;
              final titleAr = data['title_ar'] ?? '';

              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  title: Text(
                    titleAr,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text('اضغط لعرض النصوص والدراسات التابعة'),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // الانتقال لشاشة تفاصيل المدرسة لعرض النصوص والدراسات بداخلها
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => SchoolDetailsScreen(
                          schoolId: schoolId,
                          schoolName: titleAr,
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

/// شاشة فرعية تعرض النصوص (Plays) والدراسات (Studies) الخاصة بالمدرسة المحددة
class SchoolDetailsScreen extends StatelessWidget {
  final String schoolId;
  final String schoolName;

  const SchoolDetailsScreen({
    Key? key,
    required this.schoolId,
    required this.schoolName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(schoolName),
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
            // تبويب النصوص المسرحية (Plays Sub-collection)
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('schools')
                  .doc(schoolId)
                  .collection('plays')
                  .orderBy('order')
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                final plays = snapshot.data?.docs ?? [];
                if (plays.isEmpty) {
                  return const Center(child: Text('لا توجد نصوص مسرحية مضافة بعد'));
                }
                return ListView.builder(
                  itemCount: plays.length,
                  itemBuilder: (context, i) {
                    final playData = plays[i].data() as Map<String, dynamic>;
                    return ListTile(
                      leading: const Icon(Icons.theater_comedy),
                      title: Text(playData['title_ar'] ?? ''),
                      subtitle: Text(playData['pdf_url'] ?? ''),
                      // هنا يمكنك إضافة كود فتح رابط الـ PDF لاحقاً
                    );
                  },
                );
              },
            ),

            // تبويب الدراسات (Studies Sub-collection)
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('schools')
                  .doc(schoolId)
                  .collection('studies')
                  .orderBy('order')
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                final studies = snapshot.data?.docs ?? [];
                if (studies.isEmpty) {
                  return const Center(child: Text('لا توجد دراسات مضافة بعد'));
                }
                return ListView.builder(
                  itemCount: studies.length,
                  itemBuilder: (context, i) {
                    final studyData = studies[i].data() as Map<String, dynamic>;
                    return ListTile(
                      leading: const Icon(Icons.library_books),
                      title: Text(studyData['title_ar'] ?? ''),
                      subtitle: Text(studyData['content_or_url'] ?? ''),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
