// 📁 lib/features/home/bloc/question_bloc/question_event.dart
abstract class QuestionEvent {}

class FetchAnswerEvent extends QuestionEvent {
  final String questionId;
  final String question;
  final bool isDart;

  FetchAnswerEvent({
    required this.questionId,
    required this.question,
    required this.isDart,
  });
}

class ClearCacheEvent extends QuestionEvent {}

class RefreshAnswerEvent extends QuestionEvent {
  final String questionId;
  final String question;
  final bool isDart;

  RefreshAnswerEvent({
    required this.questionId,
    required this.question,
    required this.isDart,
  });
}