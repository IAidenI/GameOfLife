import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gameoflife/pages/life.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Fullscreen
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Force le mode portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      initialRoute: '/game/life',
      routes: {'/game/life': (_) => const Life()},
    );
  }
}
