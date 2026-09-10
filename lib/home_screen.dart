import 'package:flutter/material.dart';
import 'texts_library_screen.dart';
import 'directing_screen.dart';
import 'acting_screen.dart';
import 'lighting_screen.dart';
import 'scenography_screen.dart';
import 'decor_screen.dart'; // تأكد من استيراد ملف الديكور

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // استخدمنا مفتاح (key) مميز لكل قسم لضمان عدم حدوث أي خطأ في التوجيه
    final List<Map<String, String>> theatreSections = [
      {
        "id": "texts",
        "title": "1. مكتبة النصوص",
        "desc": "النصوص المسرحية والتراثية العميقة"
      },
      {
        "id": "directing",
        "title": "2. دراسات الإخراج المسرحي",
        "desc": "المدارس الإخراجية، المبادئ، والتحليلات العميقة"
      },
      {
        "id": "acting",
        "title": "3. أكاديمية التمثيل والتقنيات",
        "desc": "المدارس الأدائية والذاكرة الانفعالية والجسد"
      },
      {
        "id": "lighting",
        "title": "4. فن الإضاءة المسرحية",
        "desc": "التطور التاريخي، أنواع الإضاءة، وهندسة مزج الألوان"
      },
      {
        "id": "scenography",
        "title": "5. السينوغرافيا",
        "desc": "فلسفة الفضاء المعماري، دراماتورجيا الأزياء، والتشكيل البصري"
      },
      {
        "id": "decor",
        "title": "6. الديكور",
        "desc": "هندسة الكتل، المنصات، الأساليب الواقعية والتعبيرية، وخامات الصنع"
      },
      {
        "id": "criticism",
        "title": "7. النقد وتحليل العروض",
        "desc": "مناهج القراءة النقدية والتفكيك الدرامي"
      },
    ];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("خشبة المسرح - الرئيسية"),
          backgroundColor: Colors.black87,
        ),
        backgroundColor: const Color(0xFF121212),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Icon(
                  Icons.theater_comedy,
                  size: 60,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(height: 12),
              const Center(
                child: Text(
                  "أكاديمية الفنون والعلوم المسرحية",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "الأقسام الأكاديمية:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: theatreSections.length,
                  itemBuilder: (context, index) {
                    final section = theatreSections[index];
                    return Card(
                      color: const Color(0xFF1E1E1E),
                      margin: const EdgeInsets.only(bottom: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(
                          color: Colors.amber.withOpacity(0.3),
                        ),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        title: Text(
                          section["title"]!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            section["desc"]!,
                            style: const TextStyle(
                              color: Colors.white60,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.amber,
                          size: 16,
                        ),
                        onTap: () {
                          // التوجيه بناءً على المعرّف (ID) المضمون تماماً بغض النظر عن الترتيب
                          final String sectionId = section["id"]!;

                          if (sectionId == "texts") {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const TextsLibraryScreen()));
                          } else if (sectionId == "directing") {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const DirectingStudiesScreen()));
                          } else if (sectionId == "acting") {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ActingScreen()));
                          } else if (sectionId == "lighting") {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const LightingScreen()));
                          } else if (sectionId == "scenography") {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ScenographyScreen()));
                          } else if (sectionId == "decor") {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const DecorScreen())); // فتح شاشة الديكور حصراً وبدون أي أخطاء
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("قريباً: ${section["title"]}"),
                                backgroundColor: Colors.grey[850],
                              ),
                            );
                          }
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
