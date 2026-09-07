import 'dart:math';
import 'package:flutter/material.dart';

class TheaterAssistantScreen extends StatefulWidget {
  const TheaterAssistantScreen({super.key});

  @override
  State<TheaterAssistantScreen> createState() => _TheaterAssistantScreenState();
}

class _TheaterAssistantScreenState extends State<TheaterAssistantScreen> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final List<Map<String, String>> _messages = [
    {
      'role': 'assistant',
      'content': 'أهلاً بك يا فنان في أكاديمية المسرح. أنا مساعدك الذكي المتخصص في شؤون التمثيل، الإخراج، النصوص، والسينوغرافيا. كيف يمكنني إفادتك اليوم؟'
    }
  ];

  bool _isLoading = false;

  void _handleSubmittedText(String text) {
    if (text.trim().isEmpty) return;

    final userText = text;
    _controller.clear();
    
    setState(() {
      _messages.add({'role': 'user', 'content': userText});
      _isLoading = true;
    });

    _scrollToBottom();

    Future.delayed(const Duration(milliseconds: 700), () {
      String reply = _generateExpertTheaterResponse(userText);
      setState(() {
        _messages.add({'role': 'assistant', 'content': reply});
        _isLoading = false;
      });
      _scrollToBottom();
    });
  }

  String _generateExpertTheaterResponse(String query) {
    final q = query.trim().toLowerCase();
    final random = Random();

    if (q.contains('إخراج') || q.contains('مخرج') || q.contains('رؤية')) {
      const responses = [
        'الإخراج المسرحي هو عملية خلق عالم متكامل ينبض بالحياة على الخشبة. المخرج المبدع لا يكتفي بتحريك الممثلين، بل يصنع إقاعاً بصرياً وفكرياً يلامس وجدان المتلقي.',
        'يبدأ العمل الإخراجي بتحليل مقطعي عميق للنص، ثم بناء رؤية سينوغرافية توظف الضوء، الكتلة، والحركة لخدمة الفكرة الجوهرية للعرض.',
        'العلاقة بين المخرج والممثل هي شراكة إبداعية قائمة على الثقة؛ فالمخرج الناجح يعرف كيف يستنطق طاقات الممثل الكامنة دون أن يقيد عفويته.'
      ];
      return responses[random.nextInt(responses.length)];
    } 
    else if (q.contains('تمثيل') || q.contains('ممثل') || q.contains('تقمص') || q.contains('أداء')) {
      const responses = [
        'فن التمثيل يعتمد على الصدق الداخلي والقدرة على تقمص الأبعاد النفسية والاجتماعية للشخصية. أدوات الممثل الأساسية هي: الجسد المرن، الصوت المعبر، والذاكرة الانفعالية.',
        'لكي تبني شخصية مسرحية مقنعة، عليك البحث عن دوافعها الخفية، صراعاتها الداخلية، وكيف تتحول هذه الدوافع إلى أفعال ومواقف درامية على الخشبة.',
        'التمثيل المسرحي يختلف عن السينما؛ فهو يتطلب طاقة أكبر وإيصالاً صوتياً وحركياً يصل بوضوح حتى إلى آخر مقعد في قاعة العرض.'
      ];
      return responses[random.nextInt(responses.length)];
    } 
    else if (q.contains('نص') || q.contains('مسرحية') || q.contains('حوار') || q.contains('دراما')) {
      const responses = [
        'النص المسرحي الجيد يتميز بصراع درامي محتدم وحوار مقتضب ودافع يحمل في طياته أبعاداً أعمق مما تقوله الكلمات المكتوبة.',
        'البناء الدرامي الكلاسيكي يمر بمراحل متدرجة: العقدة، التصاعد، الذروة، ثم الحل. هل تعمل على تطوير مشهد درامي معين أو تحليل هيكل نص؟',
        'الكتابة للمسرح تتطلب فهماً عميقاً لطبيعة الفضاء المسرحي، فالكلمة المكتوبة يجب أن تحرّك خيال المخرج والممثل.'
      ];
      return responses[random.nextInt(responses.length)];
    } 
    else if (q.contains('سينوغرافيا') || q.contains('إضاءة') || q.contains('ديكور') || q.contains('أزياء')) {
      const responses = [
        'السينوغرافيا هي لغة بصرية صامتة تكمل النص والتمثيل. الديكور والإضاءة والأزياء يجب أن تشكل وحدة عضوية تعكس روح العرض ومناخه النفسي.',
        'الإضاءة المسرحية هي رسم بالضوء؛ فهي لا تقتصر على الإنارة بل تحدد الأبعاد المكانية، الزمنية، وتخلق الحالة المزاجية للمشهد.',
        'الديكور الناجح هو الديكور الوظيفي المبتكر الذي يخدم حركة الممثل ولا يشكل عبئاً أو إعاقة على الخشبة.'
      ];
      return responses[random.nextInt(responses.length)];
    } 
    else {
      const generalResponses = [
        'سؤالك يفتح آفاقاً واسعة للنقاش في الفن المسرحي! هل ترغب بأن نطبق هذا الجانب عملياً في تمارين الممثلين أم نتناول تحليله نظرياً؟',
        'المسرح هو أبو الفنون لأنه يجمع كل العناصر الإبداعية في لحظة حية ومباشرة. أخبرني بمزيد من التفاصيل لنوجه النقاش نحو هدفك الفني.',
        'هذه نقطة جوهرية في العمل المسرحي المتكامل. هل نناقشها من منظور إخراجي أم من زاويتها الدرامية والنصية؟'
      ];
      return generalResponses[random.nextInt(generalResponses.length)];
    }
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text('المساعد المسرحي الذكي', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E1E1E),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.all(16),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final msg = _messages[index];
                  final isUser = msg['role'] == 'user';
                  return Align(
                    alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      padding: const EdgeInsets.all(14),
                      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
                      decoration: BoxDecoration(
                        color: isUser ? Colors.amber.shade800 : const Color(0xFF2A2A2A),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        msg['content'] ?? '',
                        style: const TextStyle(color: Colors.white, height: 1.6, fontSize: 15),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  );
                },
              ),
            ),
            if (_isLoading)
              const LinearProgressIndicator(color: Colors.amber, backgroundColor: Color(0xFF1E1E1E)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              color: const Color(0xFF1E1E1E),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.send_rounded, color: Colors.amber),
                    onPressed: () => _handleSubmittedText(_controller.text),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      style: const TextStyle(color: Colors.white),
                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(
                        hintText: 'اكتب سؤالك المسرحي هنا...',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.white54),
                      ),
                      onSubmitted: _handleSubmittedText,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
