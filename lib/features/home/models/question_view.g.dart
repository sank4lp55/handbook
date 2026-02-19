// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_view.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionViewAdapter extends TypeAdapter<QuestionView> {
  @override
  final int typeId = 1;

  @override
  QuestionView read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuestionView(
      questionId: fields[0] as String,
      viewCount: fields[1] as int,
      lastViewedAt: fields[2] as DateTime,
      viewHistory: (fields[3] as List?)?.cast<DateTime>(),
    );
  }

  @override
  void write(BinaryWriter writer, QuestionView obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.questionId)
      ..writeByte(1)
      ..write(obj.viewCount)
      ..writeByte(2)
      ..write(obj.lastViewedAt)
      ..writeByte(3)
      ..write(obj.viewHistory);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionViewAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
