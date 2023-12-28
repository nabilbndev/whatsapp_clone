import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/landing_page.dart';

void main() {
  runApp(const WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
          useMaterial3: true,
          textTheme: const TextTheme(
            bodySmall: TextStyle(color: Colors.black, fontSize: 15),
            bodyMedium: TextStyle(color: Colors.black, fontSize: 16),
            bodyLarge: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            displayLarge: TextStyle(color: Colors.white, fontSize: 20),
            displayMedium: TextStyle(color: Colors.white, fontSize: 16),
          ),
          brightness: Brightness.light),
      home: const LandingPage(),
    );
  }
}
