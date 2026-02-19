// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_progress.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StudyProgressAdapter extends TypeAdapter<StudyProgress> {
  @override
  final int typeId = 4;

  @override
  StudyProgress read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StudyProgress(
      questionId: fields[0] as String,
      status: fields[1] as StudyStatus,
      attemptCount: fields[2] as int,
      firstAttemptDate: fields[3] as DateTime?,
      lastAttemptDate: fields[4] as DateTime?,
      completedDate: fields[5] as DateTime?,
      confidenceLevel: fields[6] as double?,
      reviewDates: (fields[7] as List?)?.cast<DateTime>(),
      difficultyRating: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, StudyProgress obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.questionId)
      ..writeByte(1)
      ..write(obj.status)
      ..writeByte(2)
      ..write(obj.attemptCount)
      ..writeByte(3)
      ..write(obj.firstAttemptDate)
      ..writeByte(4)
      ..write(obj.lastAttemptDate)
      ..writeByte(5)
      ..write(obj.completedDate)
      ..writeByte(6)
      ..write(obj.confidenceLevel)
      ..writeByte(7)
      ..write(obj.reviewDates)
      ..writeByte(8)
      ..write(obj.difficultyRating);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudyProgressAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StudyStatusAdapter extends TypeAdapter<StudyStatus> {
  @override
  final int typeId = 5;

  @override
  StudyStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return StudyStatus.notStarted;
      case 1:
        return StudyStatus.inProgress;
      case 2:
        return StudyStatus.completed;
      case 3:
        return StudyStatus.needsReview;
      default:
        return StudyStatus.notStarted;
    }
  }

  @override
  void write(BinaryWriter writer, StudyStatus obj) {
    switch (obj) {
      case StudyStatus.notStarted:
        writer.writeByte(0);
        break;
      case StudyStatus.inProgress:
        writer.writeByte(1);
        break;
      case StudyStatus.completed:
        writer.writeByte(2);
        break;
      case StudyStatus.needsReview:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudyStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
