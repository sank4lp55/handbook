import 'package:handbook/features/home/models/question.dart';

class Topic {
  final String id;
  final String title;
  final String description;
  final List<Question> questions;
  final bool isDart;

  const Topic({
    required this.id,
    required this.title,
    required this.description,
    required this.questions,
    required this.isDart,
  });

  int get questionCount => questions.length;
}
