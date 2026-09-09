import 'package:flutter/material.dart';
import 'section_screen_template.dart';

class ScenographyScreen extends StatelessWidget {
  const ScenographyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SectionScreenTemplate(
      sectionKey: 'scenography',
      defaultTitle: 'قسم السينوغرافيا المتكاملة',
    );
  }
}
