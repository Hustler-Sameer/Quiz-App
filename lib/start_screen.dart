import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  // here we are accepting a function as a positional argument so that we can use that to point to setScreen
  // function once the button is clicked
  const StartScreen(this.startQuiz, {super.key});
  // connecting the argument to make use of it in build method

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Let us learn Flutter',
            style: GoogleFonts.lato(
                color: Colors.white54,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
              onPressed: () {
                // print('Clicked!!');
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
