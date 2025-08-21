// lib/screens/topic_screen.dart
import 'package:flutter/material.dart';
import 'package:handbook/core/constants/app_colors.dart';
import 'package:handbook/features/home/models/topic.dart';
import '../widgets/question_card.dart';
import '../screens/question_screen.dart';

class TopicScreen extends StatelessWidget {
  final Topic topic;

  const TopicScreen({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Column(
        children: [
          _buildHeader(),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(24),
              itemCount: topic.questions.length,
              itemBuilder: (context, index) {
                final question = topic.questions[index];
                return QuestionCard(
                  question: question.question,
                  questionNumber: index + 1,
                  isDart: topic.isDart,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuestionScreen(
                          question: question.question,
                          topicTitle: topic.title,
                          isDart: topic.isDart,
                          questionNumber: index + 1,
                          questionId: question.id,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: AppColors.textPrimary),
        onPressed: () => Navigator.pop(context),
      ),
      title: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: topic.isDart
                    ? AppColors.dartGradient
                    : AppColors.flutterGradient,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(
              topic.isDart ? Icons.code : Icons.widgets,
              color: Colors.white,
              size: 16,
            ),
          ),
          const SizedBox(width: 12),
          Text(
            topic.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(bottom: BorderSide(color: AppColors.border)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            topic.title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color:
                      (topic.isDart
                              ? AppColors.dartColor
                              : AppColors.flutterColor)
                          .withOpacity(0.1),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color:
                        (topic.isDart
                                ? AppColors.dartColor
                                : AppColors.flutterColor)
                            .withOpacity(0.2),
                  ),
                ),
                child: Text(
                  topic.isDart ? 'DART' : 'FLUTTER',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: topic.isDart
                        ? AppColors.dartColor
                        : AppColors.flutterColor,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                '${topic.questionCount} Questions',
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            topic.description,
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.textMuted,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
