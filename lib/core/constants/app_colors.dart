// lib/utils/app_colors.dart
import 'package:flutter/material.dart';

class AppColors {
  // Primary Dark Theme Colors
  static const Color background = Color(0xFF0D1117);
  static const Color surface = Color(0xFF161B22);
  static const Color surfaceVariant = Color(0xFF21262D);

  // Accent Colors (Coding Theme)
  static const Color primary = Color(0xFF58A6FF);
  static const Color secondary = Color(0xFF7C3AED);
  static const Color accent = Color(0xFF39D353);

  // Text Colors
  static const Color textPrimary = Color(0xFFF0F6FC);
  static const Color textSecondary = Color(0xFF8B949E);
  static const Color textMuted = Color(0xFF6E7681);

  // Interactive Colors
  static const Color dartColor = Color(0xFF0175C2);
  static const Color flutterColor = Color(0xFF02569B);

  // Status Colors
  static const Color success = Color(0xFF238636);
  static const Color warning = Color(0xFFD29922);
  static const Color error = Color(0xFFDA3633);

  // Border Colors
  static const Color border = Color(0xFF30363D);
  static const Color borderLight = Color(0xFF484F58);

  // Gradient Colors
  static const List<Color> dartGradient = [
    Color(0xFF0175C2),
    Color(0xFF40C4FF),
  ];

  static const List<Color> flutterGradient = [
    Color(0xFF02569B),
    Color(0xFF0277BD),
  ];

  static const List<Color> cardGradient = [
    Color(0xFF1C2128),
    Color(0xFF21262D),
  ];
}