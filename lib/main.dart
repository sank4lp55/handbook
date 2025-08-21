// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:handbook/core/constants/app_colors.dart';
import 'package:handbook/core/services/gemini_service.dart';
import 'package:handbook/core/services/hive_service.dart';
import 'package:handbook/features/home/views/screens/home_screen.dart';
import 'features/home/bloc/question_bloc/question_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive before running the app
  await HiveService.init();

  // Load environment variables
  await dotenv.load(fileName: ".env");

  runApp(const FlutterHandbookApp());
}

class FlutterHandbookApp extends StatelessWidget {
  const FlutterHandbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<QuestionBloc>(
          create: (context) => QuestionBloc(geminiService: GeminiService()),
        ),
        // Add other blocs here as your app grows
        // BlocProvider<AnotherBloc>(
        //   create: (context) => AnotherBloc(),
        // ),
      ],
      child: MaterialApp(
        title: 'Flutter Handbook',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: const ColorScheme.dark(
            background: AppColors.background,
            surface: AppColors.surface,
            primary: AppColors.primary,
            secondary: AppColors.secondary,
            onBackground: AppColors.textPrimary,
            onSurface: AppColors.textPrimary,
          ),
          scaffoldBackgroundColor: AppColors.background,
          fontFamily: 'SF Mono',
          // Fallback to system monospace
          textTheme: const TextTheme(
            headlineLarge: TextStyle(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
            headlineMedium: TextStyle(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
            titleLarge: TextStyle(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
            bodyLarge: TextStyle(color: AppColors.textSecondary, fontSize: 16),
            bodyMedium: TextStyle(color: AppColors.textSecondary, fontSize: 14),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.surface,
            foregroundColor: AppColors.textPrimary,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.light,
            ),
          ),
          cardTheme: const CardThemeData(
            color: AppColors.surface,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              side: BorderSide(color: AppColors.border, width: 1),
            ),
            elevation: 0,
          ),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
