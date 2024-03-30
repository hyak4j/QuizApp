import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers, required this.onRestartQuiz});

  final List<String> chosenAnswers;
  final Function() onRestartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(children: [
          Text('You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!'),
          const SizedBox(height: 30,),
          QuestionSummary(summaryData),
          const Text('List of answers and questions...'),
          const SizedBox(height: 30,),
          ElevatedButton.icon(
            icon: const Icon(Icons.refresh),
            onPressed: onRestartQuiz, 
            label: const Text('Restart Quiz!')
            )
        ],
        ),
      ),
    );
  }
} 