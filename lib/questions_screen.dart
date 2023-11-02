import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The question is....',
            style: TextStyle(
              color: Colors.white30,
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            'Answer 1',
            () {},
          ),
          AnswerButton(
            'Answer 2',
            () {},
          ),
          AnswerButton(
            'Answer 3',
            () {},
          ),
          AnswerButton(
            'Answer 4',
            () {},
          ),
        ],
      ),
    );
  }
}
