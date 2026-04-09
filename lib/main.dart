import 'package:flutter/material.dart';
import 'package:flutter_random_color_app/home_page.dart';

void main() {
  runApp(const MyApp());
}
/// Application root widget.
class MyApp extends StatelessWidget {
  /// Application root widget.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}
