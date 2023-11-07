import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results_screen.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

//* using terniary operations to load screen

class _QuizState extends State<Quiz> {
  List<String> SelectedAnswer = [];

  // we keeping this final as we will not be reassigning the component but we are adding more info in it
  var activeScreen = 'start-screen';

  void chooseAnswer(String answer) {
    SelectedAnswer.add(answer);
    print(SelectedAnswer);

    if (SelectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
        SelectedAnswer = [];
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          body: activeScreen == 'results-screen'
              ? ResultsScreen(
                  choosenAnswer: SelectedAnswer,
                ) // we have passed the selected answer array to the results screen
              : Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: startAlignment,
                    end: endAlignment,
                    colors: const [
                      Color.fromARGB(90, 0, 0, 0),
                      Color.fromARGB(200, 53, 4, 4)
                    ],
                  )),
                  child: activeScreen == 'start-screen'
                      ? StartScreen(switchScreen)
                      : QuestionsScreen(onSelectedAnswer: chooseAnswer),
                ),
        ));
  }
}

// * Using Init to load screen method

// class _QuizState extends State<Quiz> {
//   // this method cannot be used as the method is created when the active screen is also
//   //also initialized hence we need to use init method.
//   // Widget activeScreen = StartScreen(switchScreen);

//   // void switchScreen() {
//   //   setState(() {
//   //     activeScreen = const QuestionsScreen();
//   //   });
//   // }

//   // this let us execute before the build method is executed hence no error is caused
//   Widget? activeScreen;
//   // the widget has question mark to indicate that the value can also be null
//   @override
//   void initState() {
//     print('init executed');
//     activeScreen = StartScreen(switchScreen);
//     super.initState();
//   }

//   void switchScreen() {
//     setState(() {
//       activeScreen = const QuestionsScreen();
//     });
//   }

//   @override
//   Widget build(context) {
//     return MaterialApp(
//         title: 'Flutter Demo',
//         home: Scaffold(
//             body: Container(
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                   begin: startAlignment,
//                   end: endAlignment,
//                   colors: const [
//                     Color.fromARGB(90, 0, 0, 0),
//                     Color.fromARGB(200, 53, 4, 4)
//                   ],
//                 )),
//                 child: activeScreen)));
//   }
// }
