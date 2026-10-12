import 'package:flutter/material.dart';

class OutputSumarry extends StatelessWidget {
  const OutputSumarry(this.data, {super.key});
  final List<Map<String, Object>> data;

  @override
  Widget build(ctx) {
    return SizedBox(
      height: 280,
      child: SingleChildScrollView(
        child: Column(
          children: data.map((value) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  decoration: BoxDecoration(
                    color: value['correct_answer'] == value['user_answer']
                        ? const Color.fromARGB(147, 59, 224, 41)
                        : const Color.fromARGB(255, 207, 91, 91),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    ((value['question_index'] as int) + 1).toString(),
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        value['questions'] as String,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 39, 39, 39),
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign:TextAlign.center,
                      ),
                      Center(
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Text(
                              value['correct_answer'] as String,
                              style: TextStyle(
                                color: Color.fromARGB(255, 84, 208, 62),
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              value['user_answer'] as String,
                              style: TextStyle(
                                color: Color.fromARGB(255, 199, 51, 51),
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 28),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
