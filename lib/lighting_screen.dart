import 'package:flutter/material.dart';

class LightingScreen extends StatelessWidget {
  const LightingScreen({super.key});

  final List<Map<String, String>> lightingTopics = const [
    {
      'title': 'فلسفة النور والظلال في المسرح',
      'description': 'كيف تتحول الإضاءة إلى عنصر درامي مستقل يروي الحكاية ويخلق الحالة النفسية.',
      'category': 'الفلسفة الجمالية'
    },
    {
      'title': 'أنواع الكشافات ووظائفها الأساسية',
      'description': 'الفرسنل (Fresnel)، البارفلو (ParCan)، والسبوت لايت في توزيع الإضاءة العامة والمركزة.',
      'category': 'التقنيات والمعدات'
    },
    {
      'title': 'توزيع الإضاءة (Key, Fill, Back Light)',
      'description': 'تقنيات الإضاءة الأساسية لإبراز كتلة الممثل وعزل الخلفية بدقة واحترافية.',
      'category': 'فنون التوزيع'
    },
    {
      'title': 'سيميولوجيا الألوان الضوئية',
      'description': 'دلالات الجلاديس (Gel filters) وتأثير درجات الألوان على دلالات المشهد المسرحي.',
      'category': 'علم الألوان'
    },
    {
      'title': 'أنظمة التحكم الرقمي (DMX) والمؤثرات',
      'description': 'برمجة المشاهد الضوئية، التخفيت التدريجي، ومزامنة الإضاءة مع الموسيقى والحركة.',
      'category': 'التحكم الحديث'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          'الإضاءة المسرحية',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: lightingTopics.length,
        itemBuilder: (context, index) {
          final topic = lightingTopics[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: const Color(0xFF1E1E1E),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.indigo.shade700.withOpacity(0.4), width: 1.5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.indigo.shade900.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          topic['category']!,
                          style: TextStyle(color: Colors.indigo.shade300, fontSize: 11),
                        ),
                      ),
                      Icon(Icons.lightbulb_rounded, color: Colors.indigo.shade400, size: 22),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    topic['title']!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    topic['description']!,
                    style: const TextStyle(
                      color: Colors.white54,
                      fontSize: 13,
                      height: 1.4,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
