import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'theme.dart';
import '../features/home/home_screen.dart';

class SupremeUniverseApp extends StatelessWidget {
  final ThemeMode themeMode;
  final VoidCallback themeToggle;

  const SupremeUniverseApp({
    super.key,
    required this.themeMode,
    required this.themeToggle,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moe Kyaw Aung | Supreme Universe V5',
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: HomeScreen(themeToggle: themeToggle),
    ).animate().fadeIn().scale();
  }
}
