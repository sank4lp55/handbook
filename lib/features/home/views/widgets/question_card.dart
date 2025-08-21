// lib/widgets/question_card.dart
import 'package:flutter/material.dart';
import 'package:handbook/core/constants/app_colors.dart';

class QuestionCard extends StatelessWidget {
  final String question;
  final int questionNumber;
  final bool isDart;
  final VoidCallback onTap;

  const QuestionCard({
    super.key,
    required this.question,
    required this.questionNumber,
    required this.isDart,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final accentColor = isDart ? AppColors.dartColor : AppColors.flutterColor;

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.border),
            ),
            child: Row(
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: accentColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: accentColor.withOpacity(0.2),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      questionNumber.toString(),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: accentColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    question,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.textMuted,
                  size: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}