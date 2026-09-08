import 'package:flutter/material.dart';
import 'home_screen.dart';

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
        fontFamily: 'Cairo', // أو الخط الافتراضي
      ),
      home: const HomeScreen(),
    );
  }
}
