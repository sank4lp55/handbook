// lib/screens/question_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:handbook/core/constants/app_colors.dart';
import 'package:handbook/core/services/hive_service.dart';
import 'package:handbook/features/home/bloc/question_bloc/question_bloc.dart';
import 'package:handbook/features/home/bloc/question_bloc/question_event.dart';
import 'package:handbook/features/home/bloc/question_bloc/question_state.dart';
import 'package:shimmer/shimmer.dart';
import 'package:share_plus/share_plus.dart';

class QuestionScreen extends StatefulWidget {
  final String question;
  final String topicTitle;
  final bool isDart;
  final String questionId;
  final int questionNumber;

  const QuestionScreen({
    super.key,
    required this.question,
    required this.topicTitle,
    required this.isDart,
    required this.questionNumber,
    required this.questionId,
  });

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int _viewCount = 0;
  bool _isBookmarked = false;
  double _fontSize = 16.0;

  @override
  void initState() {
    super.initState();

    // Increment view count when screen loads
    context.read<QuestionBloc>().add(
      IncrementViewCountEvent(questionId: widget.questionId),
    );

    // Fetch answer when screen loads
    context.read<QuestionBloc>().add(
      FetchAnswerEvent(
        question: widget.question,
        isDart: widget.isDart,
        questionId: widget.questionId,
      ),
    );

    // Get initial view count and bookmark status
    _viewCount = HiveService.getViewCount(widget.questionId);
    _checkBookmarkStatus();
  }

  void _checkBookmarkStatus() {
    // Check if question is bookmarked
    setState(() {
      _isBookmarked = HiveService.isBookmarked(widget.questionId);
    });
  }

  void _toggleBookmark() {
    setState(() {
      _isBookmarked = !_isBookmarked;
      if (_isBookmarked) {
        HiveService.addBookmark(widget.questionId);
      } else {
        HiveService.removeBookmark(widget.questionId);
      }
    });

    // Show snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(_isBookmarked ? 'Added to bookmarks' : 'Removed from bookmarks'),
        duration: const Duration(seconds: 2),
        backgroundColor: widget.isDart ? AppColors.dartColor : AppColors.flutterColor,
      ),
    );
  }

  void _shareQuestion() {
    final String shareText = '''
${widget.topicTitle} - Question ${widget.questionNumber}

${widget.question}

Learn more ${widget.isDart ? 'Dart' : 'Flutter'} interview questions!
''';
    Share.share(shareText);
  }

  void _copyAnswer(String answer) {
    Clipboard.setData(ClipboardData(text: answer));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Answer copied to clipboard'),
        duration: const Duration(seconds: 2),
        backgroundColor: widget.isDart ? AppColors.dartColor : AppColors.flutterColor,
      ),
    );
  }

  void _adjustFontSize(bool increase) {
    setState(() {
      if (increase && _fontSize < 24) {
        _fontSize += 2;
      } else if (!increase && _fontSize > 12) {
        _fontSize -= 2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildQuestionHeader(),
            _buildQuestionContent(),
            _buildAnswerSection(),
          ],
        ),
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
                colors: widget.isDart
                    ? AppColors.dartGradient
                    : AppColors.flutterGradient,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(
              widget.isDart ? Icons.code : Icons.widgets,
              color: Colors.white,
              size: 16,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              widget.topicTitle,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(
            _isBookmarked ? Icons.bookmark : Icons.bookmark_border,
            color: _isBookmarked ? AppColors.accent : AppColors.textSecondary,
          ),
          onPressed: _toggleBookmark,
        ),
        IconButton(
          icon: const Icon(Icons.share, color: AppColors.textSecondary),
          onPressed: _shareQuestion,
        ),
      ],
    );
  }

  Widget _buildQuestionHeader() {
    final accentColor = widget.isDart
        ? AppColors.dartColor
        : AppColors.flutterColor;

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
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: accentColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: accentColor.withOpacity(0.2)),
                ),
                child: Text(
                  'Q${widget.questionNumber}',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: accentColor,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: (widget.isDart
                      ? AppColors.dartColor
                      : AppColors.flutterColor)
                      .withOpacity(0.1),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: (widget.isDart
                        ? AppColors.dartColor
                        : AppColors.flutterColor)
                        .withOpacity(0.2),
                  ),
                ),
                child: Text(
                  widget.isDart ? 'DART' : 'FLUTTER',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: widget.isDart
                        ? AppColors.dartColor
                        : AppColors.flutterColor,
                  ),
                ),
              ),
              const Spacer(),
              // View count badge
              BlocBuilder<QuestionBloc, QuestionState>(
                builder: (context, state) {
                  final viewCount = state is QuestionLoaded
                      ? state.viewCount
                      : state is ViewCountUpdated
                      ? state.viewCount
                      : _viewCount;

                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.accent.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.accent.withOpacity(0.2)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.visibility_outlined,
                          size: 14,
                          color: AppColors.accent,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '$viewCount ${viewCount == 1 ? 'view' : 'views'}',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.accent,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Question',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.textSecondary,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionContent() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: AppColors.cardGradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: GptMarkdown(
        widget.question,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimary,
          height: 1.5,
        ),
        textAlign: TextAlign.start,
        onLinkTap: (url, title) {
          print('Link tapped: $url');
        },
      ),
    );
  }

  Widget _buildAnswerSection() {
    return Container(
      margin: const EdgeInsets.fromLTRB(24, 0, 24, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.accent.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.accent.withOpacity(0.2)),
                ),
                child: const Icon(
                  Icons.lightbulb_outline,
                  color: AppColors.accent,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              const Text(
                'Answer',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const Spacer(),
              // Font size controls
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.text_decrease, size: 20),
                    color: AppColors.textSecondary,
                    onPressed: () => _adjustFontSize(false),
                    constraints: const BoxConstraints(
                      minWidth: 32,
                      minHeight: 32,
                    ),
                  ),
                  Text(
                    '${_fontSize.toInt()}',
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.text_increase, size: 20),
                    color: AppColors.textSecondary,
                    onPressed: () => _adjustFontSize(true),
                    constraints: const BoxConstraints(
                      minWidth: 32,
                      minHeight: 32,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          BlocBuilder<QuestionBloc, QuestionState>(
            builder: (context, state) {
              if (state is QuestionLoading) {
                return _buildShimmerLoading();
              } else if (state is QuestionLoaded) {
                return Column(
                  children: [
                    _buildAnswerContent(state.answer),
                    const SizedBox(height: 12),
                    _buildAnswerActions(state.answer),
                  ],
                );
              } else if (state is QuestionError) {
                return _buildErrorState(state.message);
              }
              return _buildInitialState();
            },
          ),
          const SizedBox(height: 24),
          _buildNavigationButtons(),
        ],
      ),
    );
  }

  Widget _buildShimmerLoading() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Shimmer.fromColors(
        baseColor: AppColors.border,
        highlightColor: AppColors.surface,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Simulated text lines
            Container(
              height: 14,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 14,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 14,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(height: 24),
            // Simulated code block
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(height: 24),
            // More text lines
            Container(
              height: 14,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 14,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 14,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnswerContent(String answer) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: GptMarkdown(
        answer,
        style: TextStyle(
          fontSize: _fontSize,
          color: AppColors.textSecondary,
          height: 1.6,
        ),
        textAlign: TextAlign.start,
        onLinkTap: (url, title) {
          print('Link tapped: $url');
        },
        codeBuilder: (context, name, code, closed) {
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.border),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (name.isNotEmpty) ...[
                  Row(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          color: widget.isDart
                              ? AppColors.dartColor
                              : AppColors.flutterColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.copy, size: 16),
                        color: AppColors.textSecondary,
                        onPressed: () => _copyAnswer(code),
                        constraints: const BoxConstraints(
                          minWidth: 32,
                          minHeight: 32,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
                Text(
                  code,
                  style: TextStyle(
                    color: widget.isDart
                        ? AppColors.dartColor
                        : AppColors.flutterColor,
                    fontSize: 14,
                    fontFamily: 'monospace',
                  ),
                ),
              ],
            ),
          );
        },
        highlightBuilder: (context, text, style) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: AppColors.border),
            ),
            child: Text(
              text,
              style: TextStyle(
                color: widget.isDart
                    ? AppColors.dartColor
                    : AppColors.flutterColor,
                fontSize: 14,
                fontFamily: 'monospace',
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildAnswerActions(String answer) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            onPressed: () => _copyAnswer(answer),
            icon: const Icon(Icons.copy, size: 18),
            label: const Text('Copy Answer'),
            style: OutlinedButton.styleFrom(
              foregroundColor: widget.isDart ? AppColors.dartColor : AppColors.flutterColor,
              side: BorderSide(
                color: widget.isDart ? AppColors.dartColor : AppColors.flutterColor,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: OutlinedButton.icon(
            onPressed: () {
              context.read<QuestionBloc>().add(
                RefreshAnswerEvent(
                  question: widget.question,
                  isDart: widget.isDart,
                  questionId: widget.questionId,
                ),
              );
            },
            icon: const Icon(Icons.refresh, size: 18),
            label: const Text('Regenerate'),
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.accent,
              side: const BorderSide(color: AppColors.accent),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildErrorState(String errorMessage) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          Icon(Icons.error_outline, color: Colors.red[400], size: 32),
          const SizedBox(height: 12),
          const Text(
            'Failed to get answer',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.red,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            errorMessage,
            style: TextStyle(fontSize: 14, color: Colors.red[600]),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              context.read<QuestionBloc>().add(
                FetchAnswerEvent(
                  question: widget.question,
                  isDart: widget.isDart,
                  questionId: widget.questionId,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red[400],
              foregroundColor: Colors.white,
            ),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  Widget _buildInitialState() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: const Text(
        'Answer will appear here...',
        style: TextStyle(
          fontSize: 16,
          color: AppColors.textSecondary,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  Widget _buildNavigationButtons() {
    return Row(
      children: [
        Expanded(
          child: _buildNavigationButton(
            icon: Icons.arrow_back,
            label: 'Previous',
            isNext: false,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _buildNavigationButton(
            icon: Icons.arrow_forward,
            label: 'Next',
            isNext: true,
          ),
        ),
      ],
    );
  }

  Widget _buildNavigationButton({
    required IconData icon,
    required String label,
    required bool isNext,
  }) {
    final accentColor = widget.isDart
        ? AppColors.dartColor
        : AppColors.flutterColor;

    return Container(
      height: 48,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Handle navigation
            print('${isNext ? 'Next' : 'Previous'} question');
          },
          borderRadius: BorderRadius.circular(8),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.border),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!isNext) ...[
                  Icon(icon, color: accentColor, size: 18),
                  const SizedBox(width: 8),
                ],
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: accentColor,
                  ),
                ),
                if (isNext) ...[
                  const SizedBox(width: 8),
                  Icon(icon, color: accentColor, size: 18),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}