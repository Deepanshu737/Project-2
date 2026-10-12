import 'package:flutter/material.dart';

class FrontLayout extends StatelessWidget {
  const FrontLayout(this.changeQues, {super.key});
  final void Function() changeQues;
  @override
  Widget build(ctx) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          Image.asset('assets/quiz-logo.png', width: 350),
          SizedBox(height:25),
          Text(
            'MONEY MINDSET QUIZ!!🤑',

            style: TextStyle(
              fontSize: 24,
              color: const Color.fromARGB(255, 239, 208, 54),
              fontWeight: FontWeight.bold,
            ),
          ),
SizedBox(height:20),
          ElevatedButton.icon(
            onPressed: changeQues,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(211, 214, 213, 213),
              foregroundColor: const Color.fromARGB(255, 96, 52, 11),
              textStyle: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: Text('Start Quiz'),
          ),
          Padding(padding: EdgeInsetsGeometry.only(bottom: 100)),
        ],
      ),
    );
  }
}
