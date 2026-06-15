import 'package:flutter/material.dart';
import '../../core/widgets/hero_section.dart';
import '../../core/widgets/projects_section.dart';
import '../../core/widgets/skills_section.dart';
import '../../core/widgets/experience_section.dart';
import '../../core/widgets/contact_section.dart';
import '../../core/widgets/footer.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback themeToggle;

  const HomeScreen({super.key, required this.themeToggle});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppData.darkBackground,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          HeroSection(),
          ProjectsSection(),
          SkillsSection(),
          ExperienceSection(),
          ContactSection(themeToggle: widget.themeToggle),
          Footer(),
        ],
      ),
    );
  }
}
