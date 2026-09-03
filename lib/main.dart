import 'package:flutter/material.dart';

void main() {
runApp(const TheaterAcademyApp());
}

class TheaterAcademyApp extends StatelessWidget {
const TheaterAcademyApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'أكاديمية المسرح',
debugShowCheckedModeBanner: false,
theme: ThemeData.dark().copyWith(
scaffoldBackgroundColor: const Color(0xFF121212),
primaryColor: Colors.deepPurple,
colorScheme: const ColorScheme.dark(
primary: Colors.deepPurple,
secondary: Colors.purpleAccent,
),
),
home: const MainHomeScreen(),
);
}
}

class MainHomeScreen extends StatefulWidget {
const MainHomeScreen({super.key});

@override
State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
int _selectedIndex = 0;

final List<Widget> _screens = const [
Center(child: Text('الرئيسية - أكاديمية المسرح', style: TextStyle(fontSize: 20))),
Center(child: Text('الدورات التدريبية', style: TextStyle(fontSize: 20))),
Center(child: Text('المكتبة المسرحية', style: TextStyle(fontSize: 20))),
Center(child: Text('محرر النصوص والشخصيات', style: TextStyle(fontSize: 20))),
Center(child: Text('المساعد الذكي (AI)', style: TextStyle(fontSize: 20))),
];

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('أكاديمية المسرح'),
centerTitle: true,
backgroundColor: Colors.deepPurple.shade900,
),
body: Directionality(
textDirection: TextDirection.rtl,
child: _screens[_selectedIndex],
),
bottomNavigationBar: BottomNavigationBar(
currentIndex: _selectedIndex,
onTap: (index) => setState(() => _selectedIndex = index),
type: BottomNavigationBarType.fixed,
backgroundColor: const Color(0xFF1E1E1E),
selectedItemColor: Colors.purpleAccent,
unselectedItemColor: Colors.grey,
items: const [
BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
BottomNavigationBarItem(icon: Icon(Icons.school), label: 'الدورات'),
BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'المكتبة'),
BottomNavigationBarItem(icon: Icon(Icons.edit_note), label: 'النصوص'),
BottomNavigationBarItem(icon: Icon(Icons.psychology), label: 'المساعد'),
],
),
);
}
}
