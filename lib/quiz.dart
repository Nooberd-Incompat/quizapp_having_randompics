import 'package:flutter/material.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/intro_pic.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget activeScreen = const InPic(switchScreen); here, we are initializing the method in the same time as we are
  // creating the activeScreen variable

  var activeScreen = 'intro-screen';

  @override
  // void initState() {
  //   activeScreen = 'intro-screen';
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.deepPurpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: activeScreen == 'intro-screen'
                ? InPic(switchScreen)
                : const QuestionsScreen(),
          ),
        ),
      ),
    );
  }
}
