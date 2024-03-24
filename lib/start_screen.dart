import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            children: [
              Opacity(
                opacity: 0.6, //不透明度
                child: Image.asset(
                  'assets/quiz-logo.png',
                  width: 220,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Learn Flutter the fun way!',
                style: TextStyle(
                  fontSize: 24, 
                  color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white
                  ),
                  icon: const Icon(Icons.arrow_right_alt),
                  label: const Text(
                    'Start Quiz',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}