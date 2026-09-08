import 'package:flutter/material.dart';
import 'topic_detail_screen.dart';

class TextsLibraryScreen extends StatelessWidget {
  const TextsLibraryScreen({super.key});

  final List<Map<String, String>> textsTopics = const [
    {
      'title': 'أوديب ملكاً (سوفوكليس - المسرح اليوناني)',
      'description': 'ملحمة التراجيديا الإغريقية حول القدر، المعرفة، والحقيقة المطلقة.',
      'category': 'التراث اليوناني الكلاسيكي',
      'detailedContent': 'النص المسرحي (مشهد المواجهة بين أوديب وتيريسياس):\n\nأوديب: أيها الشيخ، يا من تحرس أسرار الكون، لِمَ تصمت وتحجب الحقيقة عن مدينة تبحث عن خلاصها؟\nتيريسياس: (صوت عميق وواثق) العمي هم وحدهم من يرون الحقيقة بلا رتوش يا أوديب. الشؤم يكمن في بيتك، والحقيقة التي تبحث عنها ستكلفك بصرك وبصيرتك.\nأوديب: أتهددني؟ أم أنك مخادع تآمرت مع كريون للإطاحة بعرشي؟\nتيريسياس: قدرك محتوم، وما اقترفتماه يداك سيقودك إلى الظلام حيث تبصر النور متأخراً.\n\n[إرشاد مسرحي: انسحاب تيريسياس ببطء وسط هالة ضوئية باردة، بينما يبقى أوديب معلقاً بين الشك واليقين].'
    },
    {
      'title': 'هاملت (ويليام شكسبير - عصر النهضة)',
      'description': 'سؤال الوجود الأبدي: أكون أو لا أكون، الصراع بين الفعل والتردد.',
      'category': 'مسرح عصر النهضة',
      'detailedContent': 'النص المسرحي (مونولوج هاملت الشهير):\n\nهاملت: (يحمل الجمجمة وينظر إليها بعمق) أكون.. أو لا أكون؛ تلك هي المسألة. أيهما أسمي في النفس، أن تحمل سِهام القدر الظالمة ومقالع حظه العاثر، أو أن تشهر سيفك في وجه بحر من الهموم فتضع لها حدّاً بمقاومتها؟ أن تموت.. أن تنام لا أكثر؛ وبنومٍ كهذا نضع حدّاً لآلام القلب، ولكل ما ورثه الجسد من لوعات... لتتوقف الأفكار عند هذا الحدّ وتفقد أفعالنا اسم العمل والحركة.\n\n[إرشاد مسرحي: إضاءة خافتة تركز على وجه هاملت، وصوت رياح بعيدة يعكس العزلة النفسية].'
    },
    {
      'title': 'في انتظار غودو (صموائيل بيكيت - مسرح العبث)',
      'description': 'رمزية الانتظار العبثي في عالم تخلى عن إجاباته الكبرى.',
      'category': 'المسرح الحديث والعبث',
      'detailedContent': 'النص المسرحي (استهلال المشهد بين فلاديمير واستراغون):\n\nاستراغون: (يحاول خلع حذائه بلا جدوى) لا فائدة.. لا شيء يُجدي.\nفلاديمير: (يتأمل الأفق) أبدأ في تصديق ذلك شيئاً فشيئاً. لقد كدنا نفعلها مرة.. لو لم نستسلم.\nاستراغون: ماذا سنفعل الآن؟\nفلاديمير: لا شيء.\nاستراغون: أليس بإمكاننا الذهاب؟\nفلاديمير: لا يمكننا.. نحن ننتظر غودو.\nاستراغون: (تنهيدة عميقة) آااه.. صحيح.\n\n[إرشاد مسرحي: شجرة جرداء في منتصف الخشبة، صمت طويل يقطع رتابة الحوار].'
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
                    detailedContent: topic['detailedContent']!,
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
