import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedAnswer});
  // we do this everytime as we need to get and forward the key
  final void Function(String answer) onSelectedAnswer;
  // we will execute this function once clicked

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer); // doubt
    // here we passed empty string
    // at first we are creating an empty function
    // here we are accessing the property in state class

    setState(() {
      currentQuestionIndex = currentQuestionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        // applying margin to buttons
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Color.fromARGB(255, 206, 206, 206),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    // here going with anoynomous function to be able to send answer to answerQuestion
                    answerQuestion(answer);
                  });
              // if i have passed the parameters directly then it would have not been positional parameter
              // it would have been normal other form
              /*
              previous


              */
            }),
          ],
        ),
      ),
    );
  }
}
