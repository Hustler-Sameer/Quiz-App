import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  // now we are accepting the data from result screen
  final List summaryData;

  const QuestionsSummary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            print(data);
            return Row(children: [
              Text(((data['question_index'] as int) + 1).toString()),
              Expanded(
                //expanded widget allows the child to take all the space available
                //available in the flex widget main axis
                child: Column(
                  children: [
                    Text(data['question'] as String),
                    const SizedBox(
                      height: 5,
                    ),
                    // Text(data['user_answer'] as String),
                    Text(data['correct_answer'] as String),
                  ],
                ),
              )
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
