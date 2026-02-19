// 📁 lib/features/home/bloc/question_bloc/question_event.dart
abstract class QuestionEvent {}

class FetchAnswerEvent extends QuestionEvent {
  final String question;
  final bool isDart;
  final String questionId;

  FetchAnswerEvent({
    required this.question,
    required this.isDart,
    required this.questionId,
  });
}

class ClearCacheEvent extends QuestionEvent {}

class RefreshAnswerEvent extends QuestionEvent {
  final String question;
  final bool isDart;
  final String questionId;

  RefreshAnswerEvent({
    required this.question,
    required this.isDart,
    required this.questionId,
  });
}

class IncrementViewCountEvent extends QuestionEvent {
  final String questionId;

  IncrementViewCountEvent({required this.questionId});
}