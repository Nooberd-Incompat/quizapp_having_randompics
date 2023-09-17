import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData["User_Answer"] == itemData["Correct_Answer"];

    return Row(
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData["Question_Index"] as int,
        ),
        const SizedBox(width: 20),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              itemData['Question'] as String,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(itemData["User_Answer"] as String,
                style: const TextStyle(
                  color: Color.fromARGB(255, 5, 148, 231),
                  fontWeight: FontWeight.normal,
                )),
            Text(itemData["Correct_Answer"] as String,
                style: const TextStyle(
                  color: Color.fromARGB(255, 245, 219, 72),
                  fontWeight: FontWeight.normal,
                )),
          ],
        ))
      ],
    );
  }
}
