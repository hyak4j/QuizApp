import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                showQuestionIdentifier(data['user_answer'] == data['correct_answer'], data['question_index']),
                const SizedBox(width: 15,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 219, 186, 197)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: const TextStyle(
                            color: Color.fromARGB(230, 235, 122, 220)),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: const TextStyle(color: Colors.blue),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

Widget showQuestionIdentifier (bool correct, var questionIndex) {
return Container(
          decoration: BoxDecoration(
            color: correct? Colors.blue : Colors.pinkAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(
              horizontal: 16, vertical: 8),
          child: Text(
            ((questionIndex as int) + 1).toString(),
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
       );
}
