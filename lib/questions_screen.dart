import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  // we do this everytime as we need to get and forward the key

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white30,
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            currentQuestion.answer[0],
            () {},
          ),
          AnswerButton(
            currentQuestion.answer[1],
            () {},
          ),
          AnswerButton(
            currentQuestion.answer[2],
            () {},
          ),
          AnswerButton(
            currentQuestion.answer[3],
            () {},
          ),
        ],
      ),
    );
  }
}
