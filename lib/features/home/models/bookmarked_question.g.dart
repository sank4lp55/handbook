// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmarked_question.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookmarkedQuestionAdapter extends TypeAdapter<BookmarkedQuestion> {
  @override
  final int typeId = 2;

  @override
  BookmarkedQuestion read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookmarkedQuestion(
      questionId: fields[0] as String,
      questionText: fields[1] as String,
      topicTitle: fields[2] as String,
      isDart: fields[3] as bool,
      questionNumber: fields[4] as int,
      bookmarkedAt: fields[5] as DateTime,
      notes: fields[6] as String?,
      tags: (fields[7] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, BookmarkedQuestion obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.questionId)
      ..writeByte(1)
      ..write(obj.questionText)
      ..writeByte(2)
      ..write(obj.topicTitle)
      ..writeByte(3)
      ..write(obj.isDart)
      ..writeByte(4)
      ..write(obj.questionNumber)
      ..writeByte(5)
      ..write(obj.bookmarkedAt)
      ..writeByte(6)
      ..write(obj.notes)
      ..writeByte(7)
      ..write(obj.tags);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookmarkedQuestionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
