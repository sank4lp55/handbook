// 📁 lib/features/home/models/user_preferences.dart
import 'package:hive/hive.dart';

part 'user_preferences.g.dart';

@HiveType(typeId: 3)
class UserPreferences extends HiveObject {
  @HiveField(0)
  double fontSize;

  @HiveField(1)
  bool isDarkMode;

  @HiveField(2)
  bool notificationsEnabled;

  @HiveField(3)
  DateTime lastSyncDate;

  @HiveField(4)
  String? preferredLanguage; // 'en', 'es', etc.

  @HiveField(5)
  bool showCodeLineNumbers;

  @HiveField(6)
  bool enableHapticFeedback;

  @HiveField(7)
  String? studyReminderTime; // e.g., "09:00"

  @HiveField(8)
  List<String>? hiddenTopics; // Topics user wants to hide

  @HiveField(9)
  Map<String, dynamic>? customSettings; // For future extensibility

  UserPreferences({
    required this.fontSize,
    required this.isDarkMode,
    required this.notificationsEnabled,
    required this.lastSyncDate,
    this.preferredLanguage = 'en',
    this.showCodeLineNumbers = true,
    this.enableHapticFeedback = true,
    this.studyReminderTime,
    this.hiddenTopics,
    this.customSettings,
  });

  // Factory constructor with defaults
  factory UserPreferences.defaults() {
    return UserPreferences(
      fontSize: 16.0,
      isDarkMode: true,
      notificationsEnabled: false,
      lastSyncDate: DateTime.now(),
      preferredLanguage: 'en',
      showCodeLineNumbers: true,
      enableHapticFeedback: true,
    );
  }

  // Helper method to check if a topic is hidden
  bool isTopicHidden(String topicTitle) {
    return hiddenTopics?.contains(topicTitle) ?? false;
  }

  // Helper method to toggle topic visibility
  void toggleTopicVisibility(String topicTitle) {
    hiddenTopics ??= [];
    if (hiddenTopics!.contains(topicTitle)) {
      hiddenTopics!.remove(topicTitle);
    } else {
      hiddenTopics!.add(topicTitle);
    }
    save();
  }
}
