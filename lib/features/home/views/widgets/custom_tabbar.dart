// lib/widgets/custom_tab_bar.dart
import 'package:flutter/material.dart';
import 'package:handbook/core/constants/app_colors.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;

  const CustomTabBar({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: TabBar(
        controller: tabController,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            colors: [
              AppColors.primary.withOpacity(0.2),
              AppColors.secondary.withOpacity(0.2),
            ],
          ),
          border: Border.all(color: AppColors.primary.withOpacity(0.3)),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: AppColors.textPrimary,
        unselectedLabelColor: AppColors.textSecondary,
        labelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        splashFactory: NoSplash.splashFactory,
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        tabs: [
          _buildTab(
            icon: Icons.code_outlined,
            label: 'Dart',
            gradient: AppColors.dartGradient,
          ),
          _buildTab(
            icon: Icons.flutter_dash,
            label: 'Flutter',
            gradient: AppColors.flutterGradient,
          ),
        ],
      ),
    );
  }

  Widget _buildTab({
    required IconData icon,
    required String label,
    required List<Color> gradient,
  }) {
    return Tab(
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: gradient,
            ).createShader(bounds),
            child: Icon(
              icon,
              size: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 8),
          Text(label),
        ],
      ),
    );
  }
}