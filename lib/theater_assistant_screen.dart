class TheaterSection {
  final String title;
  final String description;
  final List<PlayItem> plays;
  final List<StudyItem> studies;

  TheaterSection({
    required this.title,
    required this.description,
    required this.plays,
    required this.studies,
  });
}

class PlayItem {
  final String title;
  final String details;

  PlayItem({required this.title, required this.details});
}

class StudyItem {
  final String title;
  final String content;

  StudyItem({required this.title, required this.content});
}
