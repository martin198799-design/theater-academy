import 'package:flutter/material.dart';
import 'theater_models.dart'; // استدعاء البيانات المركزية

class SectionScreenTemplate extends StatelessWidget {
  final String sectionTitle;

  const SectionScreenTemplate({Key? key, required this.sectionTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(sectionTitle),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView.builder(
            itemCount: globalTheaterPlays.length,
            itemBuilder: (context, index) {
              final play = globalTheaterPlays[index];
              return Card(
                elevation: 3,
                margin: const EdgeInsets.symmetric(vertical: 8),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        play.title,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigoAccent),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'المؤلف: ${play.author} | التصنيف: ${play.school}',
                        style: const TextStyle(fontSize: 13, color: Colors.blueGrey),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        play.description,
                        style: const TextStyle(fontSize: 14, color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
