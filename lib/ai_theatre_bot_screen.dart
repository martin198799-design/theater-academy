import 'package:flutter/material.dart';

class AiTheatreBotScreen extends StatefulWidget {
  const AiTheatreBotScreen({Key? key}) : super(key: key);

  @override
  State<AiTheatreBotScreen> createState() => _AiTheatreBotScreenState();
}

class _AiTheatreBotScreenState extends State<AiTheatreBotScreen> {
  String _selectedSection = 'محادثة';
  final TextEditingController _messageController = TextEditingController();
  
  final List<Map<String, String>> _messages = [
    {
      'sender': 'bot',
      'text': 'أهلاً بك يا ابراهيم في مساعد المسرح الذكي 🎭. كيف يمكنني مساعدتك في عملك الفني اليوم؟'
    }
  ];

  final List<String> _sections = [
    'محادثة',
    'تحليل نص مسرحي',
    'مساعد الممثل',
    'مساعد المخرج',
    'مساعد الإضاءة',
    'توليد أفكار مسرحية'
  ];

  void _sendMessage() {
    if (_messageController.text.trim().isEmpty) return;

    final userMessage = _messageController.text;
    setState(() {
      _messages.add({'sender': 'user', 'text': userMessage});
      _messageController.clear();
      
      _messages.add({
        'sender': 'bot',
        'text': 'جاري معالجة طلبك في قسم ($_selectedSection) عبر الخادم الآمن...'
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🎭 مساعد المسرح الذكي'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[900],
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            color: Colors.grey[900],
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _sections.length,
              itemBuilder: (context, index) {
                final section = _sections[index];
                final isSelected = _selectedSection == section;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
                  child: ChoiceChip(
                    label: Text(section),
                    selected: isSelected,
                    selectedColor: Colors.deepPurple,
                    backgroundColor: Colors.grey[800],
                    labelStyle: TextStyle(
                      color: isSelected ? Colors.white : Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                    onSelected: (selected) {
                      setState(() {
                        _selectedSection = section;
                        _messages.add({
                          'sender': 'bot',
                          'text': 'تم الانتقال إلى قسم: $section. تفضل بطرح سؤالك أو نصك.'
                        });
                      });
                    },
                  ),
                );
              },
            ),
          ),
          
          Expanded(
            child: Container(
              color: Colors.black54,
              child: ListView.builder(
                padding: const EdgeInsets.all(12.0),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final msg = _messages[index];
                  final isUser = msg['sender'] == 'user';
                  return Align(
                    alignment: isUser ? Alignment.centerLeft : Alignment.centerRight,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 6.0),
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: isUser ? Colors.deepPurple[700] : Colors.grey[800],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.75,
                      ),
                      child: Text(
                        msg['text'] ?? '',
                        style: const TextStyle(color: Colors.white, fontSize: 16),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.grey[900],
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.deepPurpleAccent),
                  onPressed: _sendMessage,
                ),
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: 'اكتب سؤالك المسرحي هنا...',
                      hintStyle: TextStyle(color: Colors.white54),
                      border: InputBorder.none,
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
