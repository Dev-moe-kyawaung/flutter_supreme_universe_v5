import 'package:flutter/material.dart';

class AppData {
  // Colors
  static const Color primaryColor = Color(0xFF64FFDA);
  static const Color secondaryColor = Color(0xFF00D4FF);
  static const Color accentColor = Color(0xFFFF6B9D);
  static const Color darkBackground = Color(0xFF0A192F);
  static const Color darkerBackground = Color(0xFF020C1B);
  static const Color cardBackground = Color(0xFF112240);
  static const Color white = Color(0xFFE6F1FF);
  static const Color textPrimary = Color(0xFFA8B2D1);
  static const Color textSecondary = Color(0xFF8892B0);
  
  // Gradients
  static const List<Color> gradientPrimary = [
    Color(0xFF64FFDA),
    Color(0xFF00D4FF),
    Color(0xFF8B5CF6),
  ];
  
  static const List<Color> gradientSecondary = [
    Color(0xFFFF6B9D),
    Color(0xFF64FFDA),
    Color(0xFF00D4FF),
  ];
  
  // Spacing
  static const double spacingSmall = 8.0;
  static const double spacingMedium = 16.0;
  static const double spacingLarge = 24.0;
  static const double spacingXLarge = 40.0;
  static const double sectionPadding = 160.0;
  static const double heroHeight = 900.0;
  
  // Font Sizes
  static const double fontSizeSmall = 14.0;
  static const double fontSizeMedium = 16.0;
  static const double fontSizeLarge = 24.0;
  static const double fontSizeXLarge = 32.0;
  static const double fontSizeHero = 72.0;
  static const double fontSizeSection = 48.0;
  
  // Personal Info
  static const String name = "Moe Kyaw Aung";
  static const String title = "Android Senior Developer — Kotlin & Java";
  static const String subtitle = "Full Stack Developer & Cloud Engineer";
  static const String location = "Tachileik, Myanmar";
  static const String email = "moekyawaung.mka2030@gmail.com";
  static const String github = "https://github.com/Dev-moe-kyawaung";
  
  static const String experienceYears = "6+ Years";
  static const String appsPlayStore = "15+ Apps";
  static const String usersReached = "200K+ Users";
  static const String happyClients = "10+ Clients";
  
  static const String description = """
I build enterprise-grade native Android apps with Jetpack Compose, MVVM, Clean Architecture, 
and modern Jetpack libraries — from pixel-perfect UIs to scalable offline-first architectures.
  """;
  
  // Projects
  static const List<Map<String, dynamic>> projects = [
    {
      "title": "FitTrack Pro",
      "description": "A Jetpack Compose fitness tracking app with real-time workout logging, progress charts, and Bluetooth heart-rate monitor integration.",
      "tech": ["Kotlin", "Jetpack Compose", "Bluetooth", "Material 3", "Room"],
      "category": "Android"
    },
    {
      "title": "ShopNow — E-Commerce",
      "description": "A full-featured Android shopping app built with MVVM and Clean Architecture, featuring product catalog, cart, and Stripe payment flow.",
      "tech": ["Kotlin", "MVVM", "Clean Architecture", "Stripe", "Retrofit"],
      "category": "Android"
    },
    {
      "title": "MindfulMe",
      "description": "A mindfulness and meditation Android app with AI-generated daily affirmations, mood journals, and Firebase-backed progress sync.",
      "tech": ["Kotlin", "AI", "Firebase", "Jetpack Compose"],
      "category": "Android"
    },
  ];
  
  // Skills
  static const List<String> skillsAndroid = [
    "Jetpack Compose", "Material 3", "Room", "WorkManager", 
    "Navigation", "DataStore", "CameraX", "MVVM", "Clean Architecture"
  ];
  
  static const List<String> skillsFlutter = [
    "Flutter", "Dart", "Firebase", "Cross-platform", 
    "iOS Development", "Web Development", "CI/CD"
  ];
}
