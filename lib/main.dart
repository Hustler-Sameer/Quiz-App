import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          body: GradientContainer(
              Color.fromARGB(90, 0, 0, 0), Color.fromARGB(200, 53, 4, 4))),
    );
  }
}
