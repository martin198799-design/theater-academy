import 'package:flutter/material.dart';
import 'theater_models.dart';

class TopicDetailScreen extends StatelessWidget {
  final TheaterItem item;

  const TopicDetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F1F2C),
        title: Text(item.title, style: const TextStyle(fontSize: 18, color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                item.category,
                style: const TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "المؤلف / المنهج: ${item.authorOrMethod}",
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const Divider(color: Colors.grey, height: 30),
            Text(
              item.fullContent,
              style: const TextStyle(color: Colors.white, fontSize: 16, height: 1.8),
            ),
          ],
        ),
      ),
    );
  }
}
