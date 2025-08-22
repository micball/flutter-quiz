import 'package:flutter/material.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Widget? activeScreen;

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length){
      setState((){
        activeScreen = ResultsScreen(chosenAnswers: selectedAnswers, active: restartQuiz);
      });
    }
  }

  @override
  void initState(){
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  switchScreen() {
    setState((){
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
    });
  }

void restartQuiz(){
  setState((){
    selectedAnswers = [];
    activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
  });
}

  @override
  Widget build(context) {
    if (activeScreen == ResultsScreen(chosenAnswers: selectedAnswers, active: restartQuiz,)){
      return ResultsScreen(chosenAnswers: selectedAnswers, active: restartQuiz,);
    } else {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 63, 3, 112),
                const Color.fromARGB(255, 117, 31, 175),
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topCenter,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
  }
}
