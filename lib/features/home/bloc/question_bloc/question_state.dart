// 📁 lib/features/home/bloc/question_bloc/question_state.dart
abstract class QuestionState {}

class QuestionInitial extends QuestionState {}

class QuestionLoading extends QuestionState {}

class QuestionLoaded extends QuestionState {
  final String answer;
  final bool isCached;
  final DateTime cachedAt;
  final int viewCount;

  QuestionLoaded({
    required this.answer,
    required this.isCached,
    required this.cachedAt,
    this.viewCount = 0,
  });
}

class QuestionError extends QuestionState {
  final String message;

  QuestionError({required this.message});
}

class ViewCountUpdated extends QuestionState {
  final int viewCount;

  ViewCountUpdated({required this.viewCount});
}