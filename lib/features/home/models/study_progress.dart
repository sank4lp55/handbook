// 📁 lib/features/home/models/study_progress.dart
import 'package:hive/hive.dart';

part 'study_progress.g.dart';

@HiveType(typeId: 4)
class StudyProgress extends HiveObject {
  @HiveField(0)
  final String questionId;

  @HiveField(1)
  StudyStatus status; // enum: notStarted, inProgress, completed, needsReview

  @HiveField(2)
  int attemptCount;

  @HiveField(3)
  DateTime? firstAttemptDate;

  @HiveField(4)
  DateTime? lastAttemptDate;

  @HiveField(5)
  DateTime? completedDate;

  @HiveField(6)
  double? confidenceLevel; // 0.0 to 1.0

  @HiveField(7)
  List<DateTime>? reviewDates;

  @HiveField(8)
  String? difficultyRating; // easy, medium, hard

  StudyProgress({
    required this.questionId,
    required this.status,
    this.attemptCount = 0,
    this.firstAttemptDate,
    this.lastAttemptDate,
    this.completedDate,
    this.confidenceLevel,
    this.reviewDates,
    this.difficultyRating,
  });

  void markAsCompleted({double? confidence}) {
    status = StudyStatus.completed;
    completedDate = DateTime.now();
    lastAttemptDate = DateTime.now();
    if (confidence != null) {
      confidenceLevel = confidence;
    }
    attemptCount++;
    save();
  }

  void markForReview() {
    status = StudyStatus.needsReview;
    reviewDates ??= [];
    reviewDates!.add(DateTime.now());
    save();
  }

  void updateAttempt() {
    attemptCount++;
    lastAttemptDate = DateTime.now();
    firstAttemptDate ??= DateTime.now();
    if (status == StudyStatus.notStarted) {
      status = StudyStatus.inProgress;
    }
    save();
  }
}

@HiveType(typeId: 5)
enum StudyStatus {
  @HiveField(0)
  notStarted,
  @HiveField(1)
  inProgress,
  @HiveField(2)
  completed,
  @HiveField(3)
  needsReview,
}
