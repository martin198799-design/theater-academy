import 'package:flutter/material.dart';
import 'texts_library_screen.dart';
import 'directing_screen.dart';
import 'acting_screen.dart';
import 'lighting_screen.dart';
import 'scenography_screen.dart';
import 'decor_screen.dart';
import 'costumes_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> theatreSections = [
      {
        "id": "texts",
        "title": "1. مكتبة النصوص",
        "desc": "النصوص المسرحية والتراثية العميقة"
      },
      {
        "id": "directing",
        "title": "2. الإخراج المسرحي",
        "desc": "المدارس الإخراجية، المبادئ، والتحليلات العميقة"
      },
      {
        "id": "acting",
        "title": "3. التمثيل",
        "desc": "المدارس الأدائية والذاكرة الانفعالية والجسد"
      },
      {
        "id": "lighting",
        "title": "4. الإضاءة المسرحية",
        "desc": "التطور التاريخي، أنواع الإضاءة، وهندسة مزج الألوان"
      },
      {
        "id": "scenography",
        "title": "5. السينوغرافيا",
        "desc": "فضاء العرض المسرحي وتكوين العناصر البصرية"
      },
      {
        "id": "decor",
        "title": "6. الديكور والكتل",
        "desc": "تصميم الكتل الفراغية وتوظيف الديكور درامياً"
      },
      {
        "id": "costumes",
        "title": "7. الأزياء والماكياج",
        "desc": "دلالات الأزياء وتشكيل الماكياج النفسي للشخصيات"
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF1A0505),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A120E),
        title: const Text(
          "خشبة المسرح",
          style: TextStyle(color: Color(0xFFF3E5AB), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: theatreSections.length,
        itemBuilder: (context, index) {
          final section = theatreSections[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 14),
            decoration: BoxDecoration(
              color: const Color(0xFF2C0B08),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.4)),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              title: Text(
                section["title"]!,
                style: const TextStyle(
                  color: Color(0xFFF3E5AB),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Text(
                  section["desc"]!,
                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Color(0xFFD4AF37), size: 18),
              onTap: () {
                if (section["id"] == "texts") {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TextsLibraryScreen()));
                } else if (section["id"] == "directing") {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DirectingStudiesScreen()));
                } else if (section["id"] == "acting") {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ActingScreen()));
                } else if (section["id"] == "lighting") {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LightingScreen()));
                } else if (section["id"] == "scenography") {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ScenographyScreen()));
                } else if (section["id"] == "decor") {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DecorScreen()));
                } else if (section["id"] == "costumes") {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CostumesScreen()));
                }
              },
            ),
          );
        },
      ),
    );
  }
}
