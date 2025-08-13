import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 49, 0, 135),
                const Color.fromARGB(255, 89, 45, 212),
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topCenter,
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
