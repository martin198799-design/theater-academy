class _DepartmentDetailScreenState extends State<DepartmentDetailScreen> {
  final TextEditingController _questionController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  
  late final List<Map<String, String>> _chatMessages;
  final List<String> _userNotes = [];
  bool _isLoading = false;

  static const String _geminiApiKey = 'مفتاحك_هنا';

  @override
  void initState() {
    super.initState();
    _chatMessages = [
      {
        'sender': 'ai',
        'text': 'أهلاً بك في (${widget.department['title']}). أنا مساعدك الذكي الشامل، اسألني عن أي استفسار فني أو إخراجي أو نصي وسأجيبك بعمق واحترافية.'
      }
    ];
  }

  Future<void> _askGeminiAi() async {
    String q = _questionController.text.trim();
    if (q.isEmpty) return;
