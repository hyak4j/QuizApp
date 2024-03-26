import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/data/questions.dart';

import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
   return _QuizState();
  }
}

class _QuizState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      // 答題後換下一題
      currentQuestionIndex++;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex]; // 自'package:quiz/data/questions.dart';載入的資料

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 題目
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 30),
            // 選項
            ...currentQuestion.getShuffledAnswers().map((answer) {
              // 原先形成另外的List，...可拼接到原List<Widget>當中
              return AnswerButton(answerText: answer, onTap: answerQuestion);
            }),
          ],
        ),
      ),
    );
  }
}