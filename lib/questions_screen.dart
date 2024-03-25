import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
   return _QuizState();
  }
}

class _QuizState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The quesion',
            style: TextStyle(
              color: Colors.white
            ),),
          const SizedBox(height: 30),
          AnswerButton(answerText: 'Answer1 text...', onTap: (){}),
          AnswerButton(answerText: 'Answer2 text...', onTap: (){}),
          AnswerButton(answerText: 'Answer3 text...', onTap: (){}),
          AnswerButton(answerText: 'Answer4 text...', onTap: (){}),
        ],
      ),
    );
  }
}