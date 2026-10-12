import 'package:flutter/material.dart';
import 'package:second_app/front_layout.dart';
import 'package:second_app/changing_screen.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> collectAns = [];
  var firstScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      firstScreen = 'question-screen';
    });
  }

  void selectedAns(String merimerzi) {
    collectAns.add(merimerzi);
    if (collectAns.length == questionAnswer.length) {
      setState(() {
        firstScreen = 'results-screen';
      });
    }
  }

  void restart() {
    setState(() {
      collectAns = [];
      firstScreen = 'start-screen';
    });
  }

  @override
  Widget build(ctx) {
    Widget swapScreen = FrontLayout(switchScreen);
    if (firstScreen == 'question-screen') {
      swapScreen = ChangingScreen(selectedAns);
    }
    if (firstScreen == 'results-screen') {
      swapScreen = ResultScreen(collectAns, restart);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 175, 91, 60),
                const Color.fromARGB(255, 154, 175, 196),
              ],
              begin: AlignmentGeometry.topCenter,
              end: AlignmentGeometry.bottomCenter,
            ),
          ),
          child: swapScreen,
        ),
      ),
    );
  }
}
