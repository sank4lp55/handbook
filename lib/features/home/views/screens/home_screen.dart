// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:handbook/core/constants/app_colors.dart';
import 'package:handbook/core/data/dart_data.dart';
import 'package:handbook/core/data/flutter_data.dart';
import 'package:handbook/features/home/models/topic.dart';
import 'package:handbook/features/home/views/widgets/custom_tabbar.dart';
import '../widgets/topic_card.dart';
import '../screens/topic_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // Sample data - replace with your actual data
  final List<Topic> dartTopics = DartData.dartTopics;

  final List<Topic> flutterTopics = FlutterData.flutterTopics;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            const SizedBox(height: 24),
            CustomTabBar(tabController: _tabController),
            const SizedBox(height: 24),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [_buildDartTopicList(), _buildFlutterTopicList()],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: AppColors.flutterGradient,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.code, color: Colors.white, size: 24),
              ),
              const SizedBox(width: 16),
              const Text(
                'Flutter Handbook',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Your comprehensive guide to Flutter & Dart',
            style: TextStyle(fontSize: 16, color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }

  Widget _buildDartTopicList() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      itemCount: dartTopics.length,
      itemBuilder: (context, index) {
        final topic = dartTopics[index];
        return TopicCard(
          title: topic.title,
          isDart: true,
          questionCount: topic.questionCount,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicScreen(topic: topic),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildFlutterTopicList() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      itemCount: flutterTopics.length,
      itemBuilder: (context, index) {
        final topic = flutterTopics[index];
        return TopicCard(
          title: topic.title,
          isDart: true,
          questionCount: topic.questionCount,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TopicScreen(topic: topic),
              ),
            );
          },
        );
      },
    );
  }
}
