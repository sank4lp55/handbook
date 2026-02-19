// 📁 lib/core/services/hive_service.dart
import 'package:handbook/features/home/models/cached_answer.dart';
import 'package:handbook/features/home/models/question_view.dart';
import 'package:handbook/features/home/models/bookmarked_question.dart';
import 'package:handbook/features/home/models/user_preferences.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  static const String _answersBoxName = 'answers_cache';
  static const String _viewsBoxName = 'question_views';
  static const String _bookmarksBoxName = 'bookmarked_questions';
  static const String _preferencesBoxName = 'user_preferences';

  static Box<CachedAnswer>? _answersBox;
  static Box<QuestionView>? _viewsBox;
  static Box<BookmarkedQuestion>? _bookmarksBox;
  static Box<UserPreferences>? _preferencesBox;

  static Future<void> init() async {
    await Hive.initFlutter();

    // Register adapters with unique typeIds
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(CachedAnswerAdapter());
    }
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(QuestionViewAdapter());
    }
    if (!Hive.isAdapterRegistered(2)) {
      Hive.registerAdapter(BookmarkedQuestionAdapter());
    }
    if (!Hive.isAdapterRegistered(3)) {
      Hive.registerAdapter(UserPreferencesAdapter());
    }

    // Open boxes
    _answersBox = await Hive.openBox<CachedAnswer>(_answersBoxName);
    _viewsBox = await Hive.openBox<QuestionView>(_viewsBoxName);
    _bookmarksBox = await Hive.openBox<BookmarkedQuestion>(_bookmarksBoxName);
    _preferencesBox = await Hive.openBox<UserPreferences>(_preferencesBoxName);
  }

  // ============== Answer Cache Methods ==============

  static CachedAnswer? getCachedAnswer(String questionId) {
    if (_answersBox == null) return null;
    return _answersBox!.get(questionId);
  }

  static Future<void> cacheAnswer(
      String questionId,
      String answer,
      ) async {
    if (_answersBox == null) return;

    final cachedAnswer = CachedAnswer(
      questionId: questionId,
      answer: answer,
      cachedAt: DateTime.now(),
    );

    await _answersBox!.put(questionId, cachedAnswer);
  }

  static Future<void> clearCache() async {
    if (_answersBox == null) return;
    await _answersBox!.clear();
  }

  static Future<void> removeCachedAnswer(String questionId) async {
    if (_answersBox == null) return;
    await _answersBox!.delete(questionId);
  }

  static List<CachedAnswer> getAllCachedAnswers() {
    if (_answersBox == null) return [];
    return _answersBox!.values.toList();
  }

  static bool isAnswerExpired(CachedAnswer cachedAnswer, {int expiryDays = 30}) {
    final now = DateTime.now();
    final daysDifference = now.difference(cachedAnswer.cachedAt).inDays;
    return daysDifference > expiryDays;
  }

  static int getCacheSize() {
    if (_answersBox == null) return 0;
    return _answersBox!.length;
  }

  // ============== View Count Methods ==============

  static Future<int> incrementViewCount(String questionId) async {
    if (_viewsBox == null) return 0;

    QuestionView? view = _viewsBox!.get(questionId);

    if (view == null) {
      // Create new view record
      view = QuestionView(
        questionId: questionId,
        viewCount: 1,
        lastViewedAt: DateTime.now(),
        viewHistory: [DateTime.now()],
      );
      await _viewsBox!.put(questionId, view);
    } else {
      // Increment existing view
      view.incrementView();
      await view.save();
    }

    return view.viewCount;
  }

  static int getViewCount(String questionId) {
    if (_viewsBox == null) return 0;

    final view = _viewsBox!.get(questionId);
    return view?.viewCount ?? 0;
  }

  static QuestionView? getQuestionView(String questionId) {
    if (_viewsBox == null) return null;
    return _viewsBox!.get(questionId);
  }

  static List<QuestionView> getAllQuestionViews() {
    if (_viewsBox == null) return [];
    return _viewsBox!.values.toList();
  }

  static List<QuestionView> getMostViewedQuestions({int limit = 10}) {
    if (_viewsBox == null) return [];

    final views = _viewsBox!.values.toList()
      ..sort((a, b) => b.viewCount.compareTo(a.viewCount));

    return views.take(limit).toList();
  }

  static List<QuestionView> getRecentlyViewedQuestions({int limit = 10}) {
    if (_viewsBox == null) return [];

    final views = _viewsBox!.values.toList()
      ..sort((a, b) => b.lastViewedAt.compareTo(a.lastViewedAt));

    return views.take(limit).toList();
  }

  static Future<void> clearViewHistory() async {
    if (_viewsBox == null) return;
    await _viewsBox!.clear();
  }

  static Map<String, int> getViewStatistics() {
    if (_viewsBox == null) return {};

    final views = _viewsBox!.values.toList();
    int totalViews = 0;
    int uniqueQuestions = views.length;
    int viewsToday = 0;
    int viewsThisWeek = 0;
    int viewsThisMonth = 0;

    final now = DateTime.now();
    final todayStart = DateTime(now.year, now.month, now.day);
    final weekStart = now.subtract(Duration(days: now.weekday - 1));
    final monthStart = DateTime(now.year, now.month, 1);

    for (var view in views) {
      totalViews += view.viewCount;

      // Count views by time period
      for (var viewTime in view.viewHistory) {
        if (viewTime.isAfter(todayStart)) viewsToday++;
        if (viewTime.isAfter(weekStart)) viewsThisWeek++;
        if (viewTime.isAfter(monthStart)) viewsThisMonth++;
      }
    }

    return {
      'totalViews': totalViews,
      'uniqueQuestions': uniqueQuestions,
      'averageViews': uniqueQuestions > 0 ? (totalViews ~/ uniqueQuestions) : 0,
      'viewsToday': viewsToday,
      'viewsThisWeek': viewsThisWeek,
      'viewsThisMonth': viewsThisMonth,
    };
  }

  // ============== Bookmark Methods ==============

  static Future<void> addBookmark(
      String questionId, {
        String? questionText,
        String? topicTitle,
        bool isDart = false,
        int? questionNumber,
      }) async {
    if (_bookmarksBox == null) return;

    final bookmark = BookmarkedQuestion(
      questionId: questionId,
      questionText: questionText ?? '',
      topicTitle: topicTitle ?? '',
      isDart: isDart,
      questionNumber: questionNumber ?? 0,
      bookmarkedAt: DateTime.now(),
    );

    await _bookmarksBox!.put(questionId, bookmark);
  }

  static Future<void> removeBookmark(String questionId) async {
    if (_bookmarksBox == null) return;
    await _bookmarksBox!.delete(questionId);
  }

  static bool isBookmarked(String questionId) {
    if (_bookmarksBox == null) return false;
    return _bookmarksBox!.containsKey(questionId);
  }

  static List<BookmarkedQuestion> getAllBookmarks() {
    if (_bookmarksBox == null) return [];
    final bookmarks = _bookmarksBox!.values.toList()
      ..sort((a, b) => b.bookmarkedAt.compareTo(a.bookmarkedAt));
    return bookmarks;
  }

  static List<BookmarkedQuestion> getBookmarksByTopic(String topicTitle) {
    if (_bookmarksBox == null) return [];
    return _bookmarksBox!.values
        .where((bookmark) => bookmark.topicTitle == topicTitle)
        .toList()
      ..sort((a, b) => b.bookmarkedAt.compareTo(a.bookmarkedAt));
  }

  static List<BookmarkedQuestion> getBookmarksByType({required bool isDart}) {
    if (_bookmarksBox == null) return [];
    return _bookmarksBox!.values
        .where((bookmark) => bookmark.isDart == isDart)
        .toList()
      ..sort((a, b) => b.bookmarkedAt.compareTo(a.bookmarkedAt));
  }

  static int getBookmarkCount() {
    if (_bookmarksBox == null) return 0;
    return _bookmarksBox!.length;
  }

  static Future<void> clearAllBookmarks() async {
    if (_bookmarksBox == null) return;
    await _bookmarksBox!.clear();
  }

  // ============== User Preferences Methods ==============

  static Future<void> savePreferences(UserPreferences preferences) async {
    if (_preferencesBox == null) return;
    await _preferencesBox!.put('user_prefs', preferences);
  }

  static UserPreferences? getPreferences() {
    if (_preferencesBox == null) return null;
    return _preferencesBox!.get('user_prefs');
  }

  static Future<void> updateFontSize(double fontSize) async {
    if (_preferencesBox == null) return;

    var prefs = getPreferences() ?? UserPreferences(
      fontSize: 16.0,
      isDarkMode: true,
      notificationsEnabled: false,
      lastSyncDate: DateTime.now(),
    );

    prefs.fontSize = fontSize;
    await savePreferences(prefs);
  }

  static Future<void> updateThemeMode(bool isDarkMode) async {
    if (_preferencesBox == null) return;

    var prefs = getPreferences() ?? UserPreferences(
      fontSize: 16.0,
      isDarkMode: true,
      notificationsEnabled: false,
      lastSyncDate: DateTime.now(),
    );

    prefs.isDarkMode = isDarkMode;
    await savePreferences(prefs);
  }

  static Future<void> updateNotificationSettings(bool enabled) async {
    if (_preferencesBox == null) return;

    var prefs = getPreferences() ?? UserPreferences(
      fontSize: 16.0,
      isDarkMode: true,
      notificationsEnabled: false,
      lastSyncDate: DateTime.now(),
    );

    prefs.notificationsEnabled = enabled;
    await savePreferences(prefs);
  }

  // ============== Utility Methods ==============

  static Future<void> clearAllData() async {
    await clearCache();
    await clearViewHistory();
    await clearAllBookmarks();
    if (_preferencesBox != null) {
      await _preferencesBox!.clear();
    }
  }

  static Map<String, dynamic> getStorageStatistics() {
    return {
      'cachedAnswers': getCacheSize(),
      'viewedQuestions': _viewsBox?.length ?? 0,
      'bookmarkedQuestions': getBookmarkCount(),
      'totalViews': getViewStatistics()['totalViews'] ?? 0,
    };
  }

  static Future<void> exportData() async {
    // This method could be used to export all user data
    final data = {
      'bookmarks': getAllBookmarks().map((b) => {
        'questionId': b.questionId,
        'questionText': b.questionText,
        'topicTitle': b.topicTitle,
        'isDart': b.isDart,
        'bookmarkedAt': b.bookmarkedAt.toIso8601String(),
      }).toList(),
      'views': getAllQuestionViews().map((v) => {
        'questionId': v.questionId,
        'viewCount': v.viewCount,
        'lastViewedAt': v.lastViewedAt.toIso8601String(),
      }).toList(),
      'preferences': {
        'fontSize': getPreferences()?.fontSize ?? 16.0,
        'isDarkMode': getPreferences()?.isDarkMode ?? true,
        'notificationsEnabled': getPreferences()?.notificationsEnabled ?? false,
      },
    };

    // Return or save this data as needed
    print('Exported data: $data');
  }

  static Future<void> importData(Map<String, dynamic> data) async {
    // This method could be used to import user data
    // Implementation would parse the data and restore it to Hive boxes
  }
}