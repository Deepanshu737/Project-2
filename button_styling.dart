import 'package:flutter/material.dart';

class ButtonStyling extends StatelessWidget {
  const ButtonStyling(this.nxtAnswer, this.nxtQues, {super.key});
  final void Function() nxtQues;
  final String nxtAnswer;
  @override
  Widget build(ctx) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 24),
          ElevatedButton(
            onPressed: nxtQues,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 20),
              backgroundColor: const Color.fromARGB(89, 255, 244, 97),
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              shape: StadiumBorder(),
              textStyle: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            child: Text(nxtAnswer, textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}