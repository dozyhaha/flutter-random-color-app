import 'dart:math';
import 'package:flutter/material.dart';

/// Home screen with random background color change on tap.
class HomePage extends StatefulWidget{
  /// Creates HomePage widget.
  const HomePage ({super.key});


  @override
  State<HomePage> createState() => _HomePageState();

}
class _HomePageState extends State<HomePage> {
  Color _backgroundColor = Colors.white;

  static const int _maxColorValue = 256;
  static const int _alphaValue = 255;
  static const int _animationDurationMs = 300;

  void _changeColor() {
    final random = Random();

    setState(() {
      _backgroundColor = Color.fromARGB(
        _alphaValue,
        random.nextInt(_maxColorValue),
        random.nextInt(_maxColorValue),
        random.nextInt(_maxColorValue),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: _animationDurationMs),
        color: _backgroundColor,
        child: Center(
          child: Text(
            'Hello there',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}
