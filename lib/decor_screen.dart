import 'package:flutter/material.dart';
import 'section_screen_template.dart';

class DecorScreen extends StatelessWidget {
  const DecorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SectionScreenTemplate(
      sectionKey: 'decor',
      defaultTitle: 'قسم الديكور المسرحي',
    );
  }
}
