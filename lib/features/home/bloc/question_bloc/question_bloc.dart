// 📁 lib/blocs/question/question_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:handbook/core/services/gemini_service.dart';
import 'package:handbook/core/services/hive_service.dart';
import 'package:handbook/features/home/bloc/question_bloc/question_event.dart';
import 'package:handbook/features/home/bloc/question_bloc/question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  final GeminiService _geminiService;

  QuestionBloc({GeminiService? geminiService})
      : _geminiService = geminiService ?? GeminiService(),
        super(QuestionInitial()) {
    on<FetchAnswerEvent>(_onFetchAnswer);
    on<ClearCacheEvent>(_onClearCache);
    on<RefreshAnswerEvent>(_onRefreshAnswer);
  }

  Future<void> _onFetchAnswer(
      FetchAnswerEvent event,
      Emitter<QuestionState> emit,
      ) async {
    emit(QuestionLoading());

    try {
      // Check cache using question ID
      final cachedAnswer = HiveService.getCachedAnswer(event.questionId);

      if (cachedAnswer != null && !HiveService.isAnswerExpired(cachedAnswer)) {
        // Return cached answer
        emit(QuestionLoaded(
          answer: cachedAnswer.answer,
          isCached: true,
          cachedAt: cachedAnswer.cachedAt,
        ));
        return;
      }

      // Fetch from network if not cached or expired
      final answer = await _geminiService.getAnswer(
        event.question,
        isDart: event.isDart,
      );

      // Cache the new answer using question ID
      await HiveService.cacheAnswer(
        event.questionId,
        answer,
      );

      emit(QuestionLoaded(
        answer: answer,
        isCached: false,
        cachedAt: DateTime.now(),
      ));
    } catch (e) {
      emit(QuestionError(message: e.toString()));
    }
  }

  Future<void> _onClearCache(
      ClearCacheEvent event,
      Emitter<QuestionState> emit,
      ) async {
    try {
      await HiveService.clearCache();
    } catch (e) {
      emit(QuestionError(message: 'Failed to clear cache: ${e.toString()}'));
    }
  }

  Future<void> _onRefreshAnswer(
      RefreshAnswerEvent event,
      Emitter<QuestionState> emit,
      ) async {
    emit(QuestionLoading());

    try {
      // Remove cached answer using question ID
      await HiveService.removeCachedAnswer(event.questionId);

      // Fetch fresh answer
      final answer = await _geminiService.getAnswer(
        event.question,
        isDart: event.isDart,
      );

      // Cache the new answer
      await HiveService.cacheAnswer(
        event.questionId,
        answer,
      );

      emit(QuestionLoaded(
        answer: answer,
        isCached: false,
        cachedAt: DateTime.now(),
      ));
    } catch (e) {
      emit(QuestionError(message: e.toString()));
    }
  }
}