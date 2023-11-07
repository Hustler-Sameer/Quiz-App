import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosenAnswer});

  final List<String> choosenAnswer;

  // new method + new datatype

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    // for loop in dart
    for (var i = 0; i < choosenAnswer.length; i++) {
      // adding items in summary

      // below is the syntax to set key value pair
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answer[0],

          // here we have assumed that the answer in the array at 0th position is correct
          // hence setting it to correct ans for every question here

          'user-answer': choosenAnswer[i]
        },
      );

// we are inserting various arrays into one datatype known as map and we are filling them with for loop
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered X out of Y questions correctly'),
            const SizedBox(
              height: 30,
            ),
            const Text('List of questions and answers ....'),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz!!!'),
            )
          ],
        ),
      ),
    );
  }
}
