import 'package:flutter/material.dart';

class InPic extends StatelessWidget {
  const InPic(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "The Ultimate Quiz",
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
        // Opacity(
        //   opacity: 0.78,
        //   child: Image.asset(
        //     'assets/images/tmgyho.png',
        //     width: 200,
        //   ),
        // ),
        Image.asset(
          'assets/images/tmgyho.png',
          width: 200,
          //color: const Color.fromARGB(36, 255, 255, 255),
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_rounded),
          label: const Text('Are You Ready?'),
        )
      ],
    );
  }}