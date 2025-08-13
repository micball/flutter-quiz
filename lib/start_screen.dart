import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300),
          SizedBox(height: 80),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(height: 30),
          OutlinedButton(
            // Needs styling to match the more recatngular button style in the sample
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () {},
            child: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
