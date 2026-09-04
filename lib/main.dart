  Future<void> _askGeminiAi() async {
    String q = _questionController.text.trim();
    if (q.isEmpty) return;

    setState(() {
      _chatMessages.add({'sender': 'user', 'text': q});
      _isLoading = true;
    });
    _questionController.clear();

    try {
      final url = Uri.parse(
          'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=$_geminiApiKey');
      
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "contents": [
            {
              "parts": [
                {
                  "text": "أنت مساعد أكاديمي مسرحي خبير ومحترف. أجِب باحترافية عن هذا السؤال ضمن تخصص (${widget.department['title']}): $q"
                }
              ]
            }
          ]
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final aiText = data['candidates'][0]['content']['parts'][0]['text'];
        setState(() {
          _chatMessages.add({'sender': 'ai', 'text': aiText});
        });
      } else {
        // سيطبع لنا محتوى خطأ جوجل بالتفصيل لنتعرف عليه فوراً
        setState(() {
          _chatMessages.add({
            'sender': 'ai',
            'text': 'خطأ من جوجل (${response.statusCode}): ${response.body}'
          });
        });
      }
    } catch (e) {
      setState(() {
        _chatMessages.add({
          'sender': 'ai',
          'text': 'خطأ في الاستثناء: $e'
        });
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }
