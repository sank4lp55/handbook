// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cached_answer.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CachedAnswerAdapter extends TypeAdapter<CachedAnswer> {
  @override
  final int typeId = 0;

  @override
  CachedAnswer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CachedAnswer(
      questionId: fields[0] as String,
      answer: fields[1] as String,
      cachedAt: fields[2] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, CachedAnswer obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.questionId)
      ..writeByte(1)
      ..write(obj.answer)
      ..writeByte(2)
      ..write(obj.cachedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CachedAnswerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
