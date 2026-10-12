import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/output_sumarry.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.chossenAnsw, this.onTap, {super.key});
  final void Function() onTap;
  final List<String> chossenAnsw;

  List<Map<String, Object>> output() {
    final List<Map<String, Object>> outputSumarry = [];
    for (int i = 0; i < chossenAnsw.length; i++) {
      outputSumarry.add({
        'question_index': i,
        'questions': questionAnswer[i].text,
        'correct_answer': questionAnswer[i].answers[0],
        'user_answer': chossenAnsw[i],
      });
    }
    return outputSumarry;
  }

  @override
  Widget build(ctx) {
    final result = output();
    final tQues = questionAnswer.length;
    final cAnsw = result.where((value) {
      return value['correct_answer'] == value['user_answer'];
    }).length;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You Correctly Answered $cAnsw Out Of $tQues Questions !!',
            style: TextStyle(
              color: const Color.fromARGB(255, 79, 27, 9),
              fontSize: 22,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),

          OutputSumarry(result),

          SizedBox(height: 10),
          ElevatedButton.icon(
            onPressed: onTap,
              
            
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            icon: const Icon(Icons.restart_alt_rounded),
            label: Text('Restart'),
          ),
        ],
      ),
    );
  }
}
