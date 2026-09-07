import 'package:flutter/material.dart';
import 'theater_assistant_screen.dart'; // استدعاء شاشة المساعد المسرحي

void main() {
  runApp(const TheaterAcademyApp());
}

class TheaterAcademyApp extends StatelessWidget {
  const TheaterAcademyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'أكاديمية المسرح',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        brightness: Brightness.dark,
      ),
      // جعل شاشة المساعد المسرحي هي الشاشة الرئيسية عند تشغيل التطبيق
      home: const TheaterAssistantScreen(),
    );
  }
}
