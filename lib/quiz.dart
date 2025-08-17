import 'package:flutter/material.dart';

import './start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(context) {
    return MaterialApp(
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
    );
  }
}
