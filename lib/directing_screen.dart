import 'package:flutter/material.dart';
import 'theater_models.dart'; // استدعاء ملف البيانات المركزي

class DirectingScreen extends StatelessWidget {
  const DirectingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('قسم الإخراج المسرحي والدراسات'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'رؤى إخراجية، دراسات أكاديمية عميقة، وتطبيقات عملية للنصوص الكلاسيكية والحديثة.',
                style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: [
                    Card(
                      elevation: 3,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'التوجيه الإخراجي للنصوص الكبرى',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigoAccent),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'يعتمد قسم الإخراج على تحليل البنية الدرامية، توزيع الكتل الحركية على الخشبة، هندسة الإضاءة التعبيرية، وإدارة الممثل وفق مدارس الإخراج الحديثة والكلاسيكية.',
                              style: TextStyle(fontSize: 15, height: 1.6),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
