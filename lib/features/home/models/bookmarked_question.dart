
// 📁 lib/features/home/models/bookmarked_question.dart
import 'package:hive/hive.dart';

part 'bookmarked_question.g.dart';

@HiveType(typeId: 2)
class BookmarkedQuestion extends HiveObject {
  @HiveField(0)
  final String questionId;

  @HiveField(1)
  final String questionText;

  @HiveField(2)
  final String topicTitle;

  @HiveField(3)
  final bool isDart;

  @HiveField(4)
  final int questionNumber;

  @HiveField(5)
  final DateTime bookmarkedAt;

  @HiveField(6)
  String? notes; // Optional user notes

  @HiveField(7)
  List<String>? tags; // Optional tags for organization

  BookmarkedQuestion({
    required this.questionId,
    required this.questionText,
    required this.topicTitle,
    required this.isDart,
    required this.questionNumber,
    required this.bookmarkedAt,
    this.notes,
    this.tags,
  });

  // Helper method to update notes
  void updateNotes(String newNotes) {
    notes = newNotes;
    save();
  }

  // Helper method to add tags
  void addTag(String tag) {
    tags ??= [];
    if (!tags!.contains(tag)) {
      tags!.add(tag);
      save();
    }
  }

  // Helper method to remove tags
  void removeTag(String tag) {
    tags?.remove(tag);
    save();
  }
}