import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mix/mix.dart';
import 'package:nature/core/config/theme/app_theme.dart';
import 'package:nature/features/niagara_falls/presentation/pages/niagara_falls_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupSystemUIOverlay();

  runApp(const MainApp());
}

Future<void> setupSystemUIOverlay() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ),
  );

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MixTheme(
      data: appTheme,
      child: const MaterialApp(
        title: "Nature",
        home: NiagaraFallsPage(),
      ),
    );
  }
}
