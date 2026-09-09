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

/// بيانات الأقسام الشاملة للتطبيق
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
      StudyItem(title: 'المسرح المللاحمي عند بريشت', content: 'دراسة في كسر الإيهام وتغريب المتفرج.'),
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
