// 📁 lib/features/home/models/question_view.dart
import 'package:hive/hive.dart';

part 'question_view.g.dart';

@HiveType(typeId: 1) // Make sure this typeId is unique
class QuestionView extends HiveObject {
  @HiveField(0)
  final String questionId;

  @HiveField(1)
  int viewCount;

  @HiveField(2)
  DateTime lastViewedAt;

  @HiveField(3)
  List<DateTime> viewHistory;

  QuestionView({
    required this.questionId,
    required this.viewCount,
    required this.lastViewedAt,
    List<DateTime>? viewHistory,
  }) : viewHistory = viewHistory ?? [];

  void incrementView() {
    viewCount++;
    lastViewedAt = DateTime.now();
    viewHistory.add(DateTime.now());
  }
}