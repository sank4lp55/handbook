// 📁 lib/features/home/bloc/question_bloc/question_state.dart
abstract class QuestionState {}

class QuestionInitial extends QuestionState {}

class QuestionLoading extends QuestionState {}

class QuestionLoaded extends QuestionState {
  final String answer;
  final bool isCached;
  final DateTime cachedAt;

  QuestionLoaded({
    required this.answer,
    this.isCached = false,
    required this.cachedAt,
  });
}

class QuestionError extends QuestionState {
  final String message;

  QuestionError({required this.message});
}