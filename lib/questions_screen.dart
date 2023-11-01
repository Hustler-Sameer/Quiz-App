import 'package:flutter/material.dart';

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
    return Column(
      children: [
        const Text('The question is....'),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 1'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 2'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 3'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 4'),
        ),
      ],
    );
  }
}
