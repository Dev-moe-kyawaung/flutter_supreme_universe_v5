import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/app_data.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppData.heroHeight,
      child: Stack(
        children: [
          _ParticleBackground(),
          _GradientMeshBackground(),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 160),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _Badge(),
                SizedBox(height: AppData.spacingMedium),
                _NameText(),
                SizedBox(height: AppData.spacingSmall),
                _TitleText(),
                SizedBox(height: AppData.spacingMedium),
                Text(
                  AppData.subtitle,
                  style: TextStyle(
                    color: AppData.textSecondary,
                    fontSize: AppData.fontSizeXLarge,
                  ),
                ),
                SizedBox(height: AppData.spacingXLarge * 1.5),
                _DescriptionCard(),
                SizedBox(height: AppData.spacingXLarge * 2),
                _Buttons(),
                SizedBox(height: AppData.spacingXLarge),
                _Stats(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: AppData.gradientPrimary),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppData.primaryColor.withOpacity(0.4),
            blurRadius: 30,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Text(
        "Supreme Universe V5",
        style: TextStyle(
          color: AppData.darkerBackground,
          fontSize: AppData.fontSizeSmall,
          fontWeight: FontWeight.w700,
        ),
      ),
    ).animate().fadeIn().scale(begin: Offset(0.8, 0.8));
  }
}

class _NameText extends StatefulWidget {
  @override
  State<_NameText> createState() => _NameTextState();
}

class _NameTextState extends State<_NameText> {
  bool _glitch = false;
  
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() => _glitch = true);
      Future.delayed(Duration(milliseconds: 150), () {
        setState(() => _glitch = false);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          AppData.name,
          style: TextStyle(
            color: AppData.white,
            fontSize: AppData.fontSizeHero,
            fontWeight: FontWeight.w800,
          ),
        ),
        if (_glitch)
          Positioned.fill(
            child: Text(
              AppData.name,
              style: TextStyle(
                color: AppData.accentColor,
                fontSize: AppData.fontSizeHero,
                fontWeight: FontWeight.w800,
                offset: Offset(3, 0),
              ),
            ),
          ),
      ],
    ).animate().fadeIn(delay: 200.ms).slideX(begin: -0.3);
  }
}

class _TitleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: AppData.gradientSecondary,
      ).createShader(bounds),
      child: Text(
        AppData.title,
        style: TextStyle(
          color: AppData.white,
          fontSize: AppData.fontSizeXLarge,
          fontWeight: FontWeight.w700,
        ),
      ),
    ).animate().fadeIn(delay: 400.ms).slideX(begin: -0.3);
  }
}

class _DescriptionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: AppData.cardBackground.withOpacity(0.6),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppData.primaryColor.withOpacity(0.15)),
      ),
      child: Text(
        AppData.description,
        style: TextStyle(
          color: AppData.textPrimary,
          fontSize: AppData.fontSizeMedium,
        ),
        maxLines: 4,
      ),
    ).animate().fadeIn(delay: 600.ms).slideY(begin: 0.2);
  }
}

class _Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _PrimaryButton(text: "View Projects", icon: FontAwesomeIcons.briefcase),
        SizedBox(width: AppData.spacingXLarge),
        _GlassButton(text: "Contact Me", icon: FontAwesomeIcons.envelope),
      ],
    ).animate().fadeIn(delay: 800.ms);
  }
}

class _PrimaryButton extends StatelessWidget {
  final String text;
  final IconData icon;
  
  const _PrimaryButton({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: AppData.gradientPrimary),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppData.primaryColor.withOpacity(0.4),
            blurRadius: 30,
          ),
        ],
      ),
      child: Material(
        color: AppData.primaryColor,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: () => launchUrl(Uri.parse("https://github.com/Dev-moe-kyawaung/Moekyawaung-portfolios")),
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
            child: Row(
              children: [
                Icon(icon, color: AppData.darkerBackground, size: 20),
                SizedBox(width: 8),
                Text(text, style: TextStyle(
                  color: AppData.darkerBackground,
                  fontSize: AppData.fontSizeMedium,
                  fontWeight: FontWeight.w700,
                )),
              ],
            ),
          ),
        ),
      ),
    ).animate().fadeIn().scale().then().shake();
  }
}

class _GlassButton extends StatelessWidget {
  final String text;
  final IconData icon;
  
  const _GlassButton({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      borderRadius: 16,
      blur: 15,
      alpha: 0.8,
      border: 2,
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: () => launchUrl(Uri.parse("mailto:${AppData.email}")),
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
            child: Row(
              children: [
                Icon(icon, color: AppData.primaryColor, size: 20),
                SizedBox(width: 8),
                Text(text, style: TextStyle(
                  color: AppData.primaryColor,
                  fontSize: AppData.fontSizeMedium,
                  fontWeight: FontWeight.w600,
                )),
              ],
            ),
          ),
        ),
      ),
    ).animate().fadeIn(delay: 200.ms).scale();
  }
}

class _Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _StatCard(icon: FontAwesomeIcons.code, value: AppData.experienceYears, label: "Experience"),
        SizedBox(width: AppData.spacingXLarge),
        _StatCard(icon: FontAwesomeIcons.appStore, value: AppData.appsPlayStore, label: "Apps"),
        SizedBox(width: AppData.spacingXLarge),
        _StatCard(icon: FontAwesomeIcons.users, value: AppData.usersReached, label: "Users"),
        SizedBox(width: AppData.spacingXLarge),
        _StatCard(icon: FontAwesomeIcons.heart, value: AppData.happyClients, label: "Clients"),
      ],
    ).animate().fadeIn(delay: 1000.ms);
  }
}

class _StatCard extends StatefulWidget {
  final IconData icon;
  final String value;
  final String label;
  
  const _StatCard({required this.icon, required this.value, required this.label});

  @override
  State<_StatCard> createState() => _StatCardState();
}

class _StatCardState extends State<_StatCard> {
  bool _hover = false;
  
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: AppData.cardBackground,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: _hover ? AppData.primaryColor.withOpacity(0.5) : AppData.primaryColor.withOpacity(0.15)),
          boxShadow: _hover ? [
            BoxShadow(color: AppData.primaryColor.withOpacity(0.3), blurRadius: 30, spreadRadius: 8),
          ] : [],
        ),
        child: Column(
          children: [
            Icon(widget.icon, color: AppData.primaryColor, size: 28),
            SizedBox(height: 8),
            Text(widget.value, style: TextStyle(color: AppData.white, fontSize: AppData.fontSizeLarge, fontWeight: FontWeight.w700)),
            SizedBox(height: 4),
            Text(widget.label, style: TextStyle(color: AppData.textSecondary, fontSize: AppData.fontSizeSmall)),
          ],
        ),
      ),
    ).animate().fadeIn().slideX(begin: 0.3);
  }
}

class _ParticleBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(child: CustomPaint(painter: _ParticlePainter()));
  }
}

class _ParticlePainter extends CustomPainter {
  final particles = List.generate(600, (_) => _Particle());
  
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint().color = AppData.primaryColor.withOpacity(0.4);
    for (var p in particles) {
      canvas.drawCircle(Offset(p.x, p.y), p.size, paint);
      p.update(size);
    }
  }
  
  @override
  bool shouldRepaint(_) => true;
}

class _Particle {
  double x = Random().nextDouble() * 1000;
  double y = Random().nextDouble() * 1000;
  double size = Random().nextDouble() * 3 + 1;
  double speed = Random().nextDouble() * 0.5;
  
  void update(Size size) {
    y += speed;
    if (y > size.height) y = 0;
  }
}

class _GradientMeshBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: CustomPaint(
        painter: _GradientMeshPainter(),
      ),
    );
  }
}

class _GradientMeshPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final gradient = Gradient.sweep(
      colors: [
        AppData.primaryColor.withOpacity(0.1),
        AppData.secondaryColor.withOpacity(0.08),
        AppData.accentColor.withOpacity(0.05),
      ],
    );
    canvas.drawRect(size.toRect(), Paint().shader = gradient.createShader(size.toRect()));
  }
}
