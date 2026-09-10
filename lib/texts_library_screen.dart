import 'package:flutter/material.dart';

// 1. نموذج البيانات
class GlobalPlay {
  final String title;
  final String playwright;
  final String year;
  final String school;
  final String description;
  final String dialogueExcerpt;

  GlobalPlay({
    required this.title,
    required this.playwright,
    required this.year,
    required this.school,
    required this.description,
    required this.dialogueExcerpt,
  });
}

// 2. قائمة البيانات الأكاديمية الموسعة
final List<GlobalPlay> globalPlaysDatabase = [
  GlobalPlay(
    title: "هاملت (Hamlet)",
    playwright: "ويليام شكسبير (William Shakespeare)",
    year: "1601",
    school: "المسرح الإليزابيثي",
    description: "الأمير هاملت في صراع فلسفي ونفسي عميق حول الموت، الخيانة، والتردد الأخلاقي الانتقامي.",
    dialogueExcerpt: "أيكون أو لا يكون.. تلك هي المسألة. أيهما أكثر سمواً للروح أن تتحمل ضربات وحظوظ القدر العاتية، أو أن تثور على طوفان من الأحزان وتضع حدا لها بمقاومتها؟",
  ),
  GlobalPlay(
    title: "بيت الدمية (A Doll's House)",
    playwright: "هنريك إبسن (Henrik Ibsen)",
    year: "1879",
    school: "المسرح الواقعي الاجتماعي",
    description: "نورا هيلمر تكتشف بعد سنوات أنها تعيش كدمية في منزل زوجها لتتخذ قرارها الصادم بالاستقلال والبحث عن ذاتها.",
    dialogueExcerpt: "تورفالد: أنتِ زوجة وأم قبل كل شيء!\nنورا: لم يعد بإمكاني تصديق ذلك. أعتقد أنني قبل كل شيء إنسانة.. تماماً مثلما أنت إنسان.",
  ),
  GlobalPlay(
    title: "في انتظار غودو (Waiting for Godot)",
    playwright: "صموائيل بيكيت (Samuel Beckett)",
    year: "1952",
    school: "مسرح العبث",
    description: "الصديقان فلاديمير واستراگون ينتظران شخصاً غامضاً يدعى 'غودو' بلا هدى، في تأمل وجودي لعبثية الحياة والانتظار.",
    dialogueExcerpt: "فلاديمير: إذن، لا نزال ننتظر؟\nاستراگون: هكذا يبدو الأمر.\nفلاديمير: متحيرون، أليس كذلك؟\nاستراگون: هكذا هو الحال منذ زمن طويل.",
  ),
  GlobalPlay(
    title: "أوديب الملك (Oedipus Rex)",
    playwright: "سوفوكليس (Sophocles)",
    year: "429 ق.م",
    school: "المسرح اليوناني الكلاسيكي",
    description: "الملك أوديب يبحث بيأس عن قاتل لايوس لرفع اللعنة عن طيبة، ليكتشف تدريجياً أنه هو الجاني وفقاً لنبوة القدر.",
    dialogueExcerpt: "يا ويلتاه! كل شيء يتضح الآن، لقد أشرق النور على حقيقتي التي كنت أخشاها.. تباً لمن ولدني، وتباً لمن تزوجتها، وتباً لمن سفكت دمه!",
  ),
  GlobalPlay(
    title: "الدزينة الحادية عشرة (صح النوم)",
    playwright: "توفيق الحكيم / أو النصوص التراثية المسرحية",
    year: "1900s",
    school: "المسرح العربي التأسيسي",
    description: "تجسيد للبيئة الشعبية وصراعات السلطة والعدالة الاجتماعية بأسلوب درامي ساخر وعميق.",
    dialogueExcerpt: "العدالة ليست حبراً على ورق، بل هي نبض في قلب الإنسان المقهور حين يبحث عن صوته الضائع.",
  ),
];

// 3. شاشة العرض
class TextsLibraryScreen extends StatelessWidget {
  const TextsLibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("مكتبة النصوص العالمية"),
        backgroundColor: Colors.black87,
      ),
      body: ListView.builder(
        itemCount: globalPlaysDatabase.length,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, index) {
          final play = globalPlaysDatabase[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          play.title,
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber),
                        ),
                      ),
                      Text(play.year, style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text("المؤلف: ${play.playwright}", style: const TextStyle(fontStyle: FontStyle.italic, color: Colors.blueGrey)),
                  Text("المدرسة: ${play.school}", style: const TextStyle(fontSize: 12, color: Colors.grey)),
                  const Divider(height: 20),
                  Text(play.description, style: const TextStyle(fontSize: 14, height: 1.4)),
                  const SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.amber.withOpacity(0.3)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "مقتطف حواري مطول:",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.amber),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          play.dialogueExcerpt,
                          style: const TextStyle(fontSize: 13, fontStyle: FontStyle.italic, height: 1.4),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
