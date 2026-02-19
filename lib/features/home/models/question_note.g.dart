// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_note.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionNoteAdapter extends TypeAdapter<QuestionNote> {
  @override
  final int typeId = 6;

  @override
  QuestionNote read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuestionNote(
      questionId: fields[0] as String,
      noteContent: fields[1] as String,
      createdAt: fields[2] as DateTime,
      lastModifiedAt: fields[3] as DateTime,
      highlights: (fields[4] as List?)?.cast<String>(),
      keyPoints: (fields[5] as List?)?.cast<String>(),
      personalExample: fields[6] as String?,
      relatedLinks: (fields[7] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, QuestionNote obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.questionId)
      ..writeByte(1)
      ..write(obj.noteContent)
      ..writeByte(2)
      ..write(obj.createdAt)
      ..writeByte(3)
      ..write(obj.lastModifiedAt)
      ..writeByte(4)
      ..write(obj.highlights)
      ..writeByte(5)
      ..write(obj.keyPoints)
      ..writeByte(6)
      ..write(obj.personalExample)
      ..writeByte(7)
      ..write(obj.relatedLinks);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionNoteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
