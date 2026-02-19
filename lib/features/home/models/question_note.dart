// 📁 lib/features/home/models/question_note.dart
import 'package:hive/hive.dart';

part 'question_note.g.dart';

@HiveType(typeId: 6)
class QuestionNote extends HiveObject {
  @HiveField(0)
  final String questionId;

  @HiveField(1)
  String noteContent;

  @HiveField(2)
  DateTime createdAt;

  @HiveField(3)
  DateTime lastModifiedAt;

  @HiveField(4)
  List<String>? highlights; // Highlighted parts of the answer

  @HiveField(5)
  List<String>? keyPoints; // Key takeaways

  @HiveField(6)
  String? personalExample; // User's own example

  @HiveField(7)
  List<String>? relatedLinks; // External resources

  QuestionNote({
    required this.questionId,
    required this.noteContent,
    required this.createdAt,
    required this.lastModifiedAt,
    this.highlights,
    this.keyPoints,
    this.personalExample,
    this.relatedLinks,
  });

  void updateContent(String newContent) {
    noteContent = newContent;
    lastModifiedAt = DateTime.now();
    save();
  }

  void addKeyPoint(String point) {
    keyPoints ??= [];
    keyPoints!.add(point);
    lastModifiedAt = DateTime.now();
    save();
  }

  void addHighlight(String highlight) {
    highlights ??= [];
    if (!highlights!.contains(highlight)) {
      highlights!.add(highlight);
      lastModifiedAt = DateTime.now();
      save();
    }
  }

  void addRelatedLink(String link) {
    relatedLinks ??= [];
    if (!relatedLinks!.contains(link)) {
      relatedLinks!.add(link);
      lastModifiedAt = DateTime.now();
      save();
    }
  }
}