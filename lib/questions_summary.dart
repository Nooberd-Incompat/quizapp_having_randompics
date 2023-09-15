import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            Text(((data["Question_Index"] as int) + 1).toString()),
            Expanded(
              child: Column(
                children: [
                  Text(data["Question"] as String),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(data["User_Answer"] as String),
                  Text(data["Correct_Answer"] as String),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
