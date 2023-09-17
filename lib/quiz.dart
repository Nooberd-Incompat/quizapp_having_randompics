import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/intro_pic.dart';
import 'package:quiz/results_screen.dart';

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
  List<String> selectedAnswers = [];

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

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        //selectedAnswers= [];
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz(){
    setState((){
      selectedAnswers = [];
      activeScreen = "Question_Screen";
    });
  }

  Widget build(context) {
    Widget screenWidget = InPic(switchScreen);

    if (activeScreen == "questions-screen") {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }
    if (activeScreen == "results-screen") {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }
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
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}
