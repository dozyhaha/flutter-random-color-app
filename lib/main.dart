import 'package:flutter/material.dart';
import 'package:flutter_random_color_app/home_page.dart';

void main() {
  runApp(const MainApp());
}
/// Application root widget.
class MainApp extends StatelessWidget {
  /// Application root widget.
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}
