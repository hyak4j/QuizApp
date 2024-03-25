import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
 var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }
  @override
  Widget build(context) {
    final screenWidget = activeScreen == 'start-screen' ?
                 StartScreen(switchScreen) : QuestionsScreen();

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 104, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              ),
          ),
          child: screenWidget,
        )
      ),
    );
  }
}