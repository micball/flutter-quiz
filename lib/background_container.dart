import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(191, 68, 2, 184),
            const Color.fromARGB(255, 52, 25, 126),
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz-logo.png', width: 200),
            SizedBox(height: 30),
            Text(
              "Learn Flutter the fun way!",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              // Needs styling to match the more recatngular button style in the sample
              onPressed: () {},
              child: Text(
                "Start Quiz",
                style: TextStyle(color: const Color.fromARGB(255, 7, 2, 2), fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
