import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  
  runApp(const SupremeUniverseV5());
}

class SupremeUniverseV5 extends StatefulWidget {
  const SupremeUniverseV5({super.key});

  @override
  State<SupremeUniverseV5> createState() => _SupremeUniverseV5State();
}

class _SupremeUniverseV5State extends State<SupremeUniverseV5> {
  ThemeMode _themeMode = ThemeMode.dark;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SupremeUniverseApp(
      themeMode: _themeMode,
      themeToggle: _toggleTheme,
    );
  }
}
