import 'package:flutter/material.dart';
import 'section_screen_template.dart';

class CostumesScreen extends StatelessWidget {
  const CostumesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SectionScreenTemplate(
      sectionKey: 'costumes',
      defaultTitle: 'قسم الأزياء المسرحية',
    );
  }
}
