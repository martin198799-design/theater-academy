import 'package:flutter/material.dart';

// --- نماذج البيانات المدمجة ---
class PlayItem {
  final String title;
  final String details;
  PlayItem({required this.title, required this.details});
}

class StudyItem {
  final String title;
  final String content;
  StudyItem({required this.title, required this.content});
}

class TheaterSection {
  final String title;
  final String description;
  final List<PlayItem> plays;
  final List<StudyItem> studies;

  TheaterSection({
    required this.title,
    required this.description,
    required this.plays,
    required this.studies,
  });
}

// --- البيانات المحلية الجاهزة ---
final Map<String, TheaterSection> theaterData = {
  'texts': TheaterSection(
    title: 'مكتبة النصوص المسرحية',
    description: 'نصوص عالمية ومحلية كاملة ومترجمة بأعلى بلاغة',
    plays: [
      PlayItem(title: 'أوديب ملكاً', details: 'سوفوكليس - التراجيديا اليونانية الكلاسيكية'),
      PlayItem(title: 'ميديا', details: 'يوريبيديس - صراع الانتقام والعاطفة'),
      PlayItem(title: 'صَح النوم', details: 'مسرحية غنائية عربية تراثية'),
    ],
    studies: [
      StudyItem(title: 'مفهوم التطهير عند أرسطو', content: 'دراسة تحليلية لدور التراجيديا في تطهير النفس البشرية.'),
      StudyItem(title: 'بنية الصراع في النص المسرحي', content: 'كيف ينبني الصراع الدرامي بين البطل والقدر.'),
    ],
  ),
  'directing': TheaterSection(
    title: 'الإخراج المسرحي',
    description: 'مدارس الإخراج، ستانسلافسكي، بريشت، وأرتو',
    plays: [
      PlayItem(title: 'الدائرة القوقازية الطباشيرية', details: 'تطبيق عملي لمسرح الملحمة عند بريشت'),
    ],
    studies: [
      StudyItem(title: 'المسرح الملحمي عند بريشت', content: 'دراسة في كسر الإيهام وتغريب المتفرج.'),
      StudyItem(title: 'نظام ستانسلافسكي في إعداد الممثل', content: 'الذاكرة الانفعالية والصدق الداخلي للشخصية.'),
    ],
  ),
  'acting': TheaterSection(
    title: 'فن التمثيل',
    description: 'إعداد الممثل، الارتجال، الصوت، والذاكرة الانفعالية',
    plays: [
      PlayItem(title: 'نصوص قصيرة للتدريب على المونولوج', details: 'تمارين الأداء الفردي والتقمص'),
    ],
    studies: [
      StudyItem(title: 'تقنيات التنفس الصوتي للممثل', content: 'كيفية استخدام طبقات الصوت على خشبة المسرح.'),
      StudyItem(title: 'الجسد كأداة تعبيرية', content: 'لغة الجسد والإيماءة في التمثيل الصامت والدرامي.'),
    ],
  ),
  'decor': TheaterSection(
    title: 'الديكور المسرحي',
    description: 'هندسة الفضاء المسرحي، الكتلة، والوظيفة الدرامية',
    plays: [
      PlayItem(title: 'تصاميم سينوغرافية مقترحة', details: 'توزيع الفضاء للمسرحيات الكلاسيكية'),
    ],
    studies: [
      StudyItem(title: 'دلالات الألوان والإضاءة في الديكور', content: 'كيف تؤثر الكتلة واللون على الحالة النفسية للمتفرج.'),
      StudyItem(title: 'التطور التاريخي للسينوغرافيا', content: 'من خشبة المسرح اليوناني إلى الديكور التجريدي الحديث.'),
    ],
  ),
};

// --- واجهة عرض المكتبة والأقسام ---
class TextsLibraryScreen extends StatelessWidget {
  const TextsLibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

// --- شاشة تفاصيل القسم (النصوص والدراسات) ---
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
                ? const Center(child: Text('لا توجد نصوص مسرحية مضافة'))
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
