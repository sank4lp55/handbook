// 📁 lib/core/models/cached_answer.dart
import 'package:hive/hive.dart';

part 'cached_answer.g.dart';

@HiveType(typeId: 0)
class CachedAnswer extends HiveObject {
  @HiveField(0)
  final String questionId;

  @HiveField(1)
  final String answer;

  @HiveField(2)
  final DateTime cachedAt;

  CachedAnswer({
    required this.questionId,
    required this.answer,
    required this.cachedAt,
  });
}