// 📁 lib/core/services/hive_service.dart
import 'package:handbook/features/home/models/cached_answer.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  static const String _boxName = 'answers_cache';
  static Box<CachedAnswer>? _box;

  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(CachedAnswerAdapter());
    _box = await Hive.openBox<CachedAnswer>(_boxName);
  }

  static CachedAnswer? getCachedAnswer(String questionId) {
    if (_box == null) return null;
    return _box!.get(questionId);
  }

  static Future<void> cacheAnswer(
      String questionId,
      String answer,
      ) async {
    if (_box == null) return;

    final cachedAnswer = CachedAnswer(
      questionId: questionId,
      answer: answer,
      cachedAt: DateTime.now(),
    );

    await _box!.put(questionId, cachedAnswer);
  }

  static Future<void> clearCache() async {
    if (_box == null) return;
    await _box!.clear();
  }

  static Future<void> removeCachedAnswer(String questionId) async {
    if (_box == null) return;
    await _box!.delete(questionId);
  }

  static List<CachedAnswer> getAllCachedAnswers() {
    if (_box == null) return [];
    return _box!.values.toList();
  }

  static bool isAnswerExpired(CachedAnswer cachedAnswer, {int expiryDays = 30}) {
    final now = DateTime.now();
    final daysDifference = now.difference(cachedAnswer.cachedAt).inDays;
    return daysDifference > expiryDays;
  }
}