import 'package:flutter/material.dart';
import 'directing_screen.dart';
import 'texts_library_screen.dart'; // استيراد شاشة مكتبة النصوص

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> theatreSections = [
      {"title": "1. مكتبة النصوص", "desc": "النصوص المسرحية والتراثية العميقة"},
      {"title": "2. دراسات الإخراج المسرحي", "desc": "المدارس الإخراجية، المبادئ، والتحليلات العميقة"},
      {"title": "3. أكاديمية التمثيل والتقنيات", "desc": "المدارس الأدائية والذاكرة الانفعالية والجسد"},
      {"title": "4. السينوغرافيا والفضاء المسرحي", "desc": "الإضاءة، الديكور، والكتل البصرية"},
      {"title": "5. النقد وتحليل العروض", "desc": "مناهج القراءة النقدية والتفكيك الدرامي"},
      {"title": "6. الدراماتورجيا وبناء النص", "desc": "تشريح البنية الدرامية وتطوير الحكاية"},
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
                          color: (index == 0 || index == 1)
                              ? Colors.amber.withOpacity(0.5)
                              : Colors.transparent,
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
                          // توجيه العناصر إلى شاشاتها الخاصة
                          if (index == 0) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TextsLibraryScreen(),
                              ),
                            );
                          } else if (index == 1) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DirectingStudiesScreen(),
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
