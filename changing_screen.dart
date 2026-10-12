import 'package:flutter/material.dart';
import 'package:second_app/button_styling.dart';
import 'package:second_app/data/questions.dart';

class ChangingScreen extends StatefulWidget {
  const ChangingScreen(this.newScreen, {super.key});
  final void Function(String meriMerzi) newScreen;
  @override
  State<ChangingScreen> createState() {
    return _ChangingScreenState();
  }
}

class _ChangingScreenState extends State<ChangingScreen> {
  var nxtScreen = 0;
  void qsAnswScreen(String answer) {
    // ( answer-> meri merzi)
    widget.newScreen(answer);
    setState(() {
      nxtScreen++;
    });
  }

  @override
  Widget build(ctx) {
    var currentQues = questionAnswer[nxtScreen];
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQues.text,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 7, 7, 7),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 18),
          ...currentQues.getShuffledAnswer().map((meriMerzi) {
            return ButtonStyling(meriMerzi, () {
              qsAnswScreen(meriMerzi);
            });
          }),
        ],
      ),
    );
  }
}
