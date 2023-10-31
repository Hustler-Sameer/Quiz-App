import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  // here we are accepting a function as a positional argument so that we can use that to point to setScreen
  // function once the button is clicked
  const StartScreen(this.startQuiz, {super.key});
  // connecting the argument to make use of it in build method

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Let us learn Flutter',
            style: TextStyle(fontSize: 28, color: Colors.white60),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
              onPressed: () {
                print('Clicked!!');
                startQuiz();
                // here now we are executing the function as the anoynomous function body will
                // will be executed only once the button is pressed
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              child: const Text('Start Quiz'))
        ],
      ),
    );
  }
}
