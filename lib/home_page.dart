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

  void _changeColor() {
    final random = Random();

    setState(() {
      _backgroundColor = Color.fromARGB(
        255,
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
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
