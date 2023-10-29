import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [color1, color2],
        )),
        child: Center(
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
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Start Quiz'))
            ],
          ),
        ));
  }
}
