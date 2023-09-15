import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          "Question_Index": i,
          "Question": questions[i].text,
          "Correct_Answer": questions[i].answers[0],
          "User_Answer": chosenAnswers[i]
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
          margin: const EdgeInsets.all(80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("You answered something ig"),
              SizedBox(
                height: 30,
              ),
              QuestionsSummary(getSummaryData()),
              SizedBox(
                height: 30,
              ),
              TextButton(onPressed: () {}, child: Text("Restart quiz"))
            ],
          )),
    );
  }
}
