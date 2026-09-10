import 'package:flutter/material.dart';
import 'texts_library_screen.dart';
import 'directing_screen.dart';
import 'acting_screen.dart';
import 'lighting_screen.dart';
import 'scenography_screen.dart'; // تأكد من استيراد ملف السينوغرافيا

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> theatreSections = [
      {"title": "1. مكتبة النصوص", "desc": "النصوص المسرحية والتراثية العميقة"},
      {"title": "2. دراسات الإخراج المسرحي", "desc": "المدارس الإخراجية، المبادئ، والتحليلات العميقة"},
      {"title": "3. أكاديمية التمثيل والتقنيات", "desc": "المدارس الأدائية والذاكرة الانفعالية والجسد"},
      {"title": "4. فن الإضاءة المسرحية", "desc": "التطور التاريخي، أنواع الإضاءة، وهندسة مزج الألوان"},
      {"title": "5. السينوغرافيا والفضاء المسرحي", "desc": "فلسفة الفضاء المعماري، دراماتورجيا الأزياء، والتشكيل البصري"}, // القسم الرابع أو الخامس حسب ترتيبك
      {"title": "6. النقد وتحليل العروض", "desc": "مناهج القراءة النقدية والتفكيك الدرامي"},
      {"title": "7. تاريخ المسرح العالمي والعربي", "desc": "محطات وتطورات الفن المسرحي عبر التاريخ"},
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
                "الأقسام الأكاديمية السبعة:",
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
                          // ربط الفهارس بدقة مع الشاشات البرمجية
                          if (index == 0) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const TextsLibraryScreen()));
                          } else if (index == 1) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const DirectingStudiesScreen()));
                          } else if (index == 2) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ActingScreen()));
                          } else if (index == 3) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const LightingScreen()));
                          } else if (index == 4) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ScenographyScreen())); // توجيه القسم الخامس لشاشة السينوغرافيا
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
