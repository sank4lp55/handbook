// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserPreferencesAdapter extends TypeAdapter<UserPreferences> {
  @override
  final int typeId = 3;

  @override
  UserPreferences read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserPreferences(
      fontSize: fields[0] as double,
      isDarkMode: fields[1] as bool,
      notificationsEnabled: fields[2] as bool,
      lastSyncDate: fields[3] as DateTime,
      preferredLanguage: fields[4] as String?,
      showCodeLineNumbers: fields[5] as bool,
      enableHapticFeedback: fields[6] as bool,
      studyReminderTime: fields[7] as String?,
      hiddenTopics: (fields[8] as List?)?.cast<String>(),
      customSettings: (fields[9] as Map?)?.cast<String, dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, UserPreferences obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.fontSize)
      ..writeByte(1)
      ..write(obj.isDarkMode)
      ..writeByte(2)
      ..write(obj.notificationsEnabled)
      ..writeByte(3)
      ..write(obj.lastSyncDate)
      ..writeByte(4)
      ..write(obj.preferredLanguage)
      ..writeByte(5)
      ..write(obj.showCodeLineNumbers)
      ..writeByte(6)
      ..write(obj.enableHapticFeedback)
      ..writeByte(7)
      ..write(obj.studyReminderTime)
      ..writeByte(8)
      ..write(obj.hiddenTopics)
      ..writeByte(9)
      ..write(obj.customSettings);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserPreferencesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
