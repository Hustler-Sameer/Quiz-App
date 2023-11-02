import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onTap, {super.key});

  final String answerText;
  final void Function() onTap;
  // here we are accepting the text and the function that we should execute whenever we are
  // we are calling this function
  // this method is called positional arguments

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(answerText),
    );
  }
}

//** We are now doing it by named argument method

//class AnswerButton extends StatelessWidget {
//   const AnswerButton( { super.key , required this.answerText , required this.onTap });

//   final String answerText;
//   final void Function() onTap;
//   // here we are accepting the text and the function that we should execute whenever we are
//   // we are calling this function
//

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onTap,
//       child: Text(answerText),
//     );
//   }
// }
//
//
//
//
// */
