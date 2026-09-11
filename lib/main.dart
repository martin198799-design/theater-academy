import 'package:flutter/material.dart';
import 'welcome_screen.dart'; // استدعاء شاشة الترحيب التي أنشأناها

void main() {
  runApp(const TheaterAcademyApp());
}

class TheaterAcademyApp extends StatelessWidget {
  const TheaterAcademyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'أكاديمية خشبة المسرح',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: const Color(0xFF121212),
        fontFamily: 'Cairo',
      ),
      home: WelcomeScreen(), // جعل شاشة الترحيب هي أول واجهة تظهر
    );
  }
}
