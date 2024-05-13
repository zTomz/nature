import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nature/features/intro/presentation/pages/intro_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Remove all ui overlays
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ),
  );

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nature",
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: const IntroPage(),
    );
  }
}
