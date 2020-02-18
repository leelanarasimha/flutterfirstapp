import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State {
  var questionIndex = 0;

  static const questions = [
    {
      'questionText': 'Your first question',
      'answers': ['45454', 'vccvcv', 'klklkl']
    },
    {
      'questionText': 'Your Second question',
      'answers': ['hjhhjhj', 'second answer', 'bbvbvb']
    },
    {
      'questionText': 'Your Third question',
      'answers': ['sdsdsd', 'third answer answer', 'answeeewwewer3']
    },
  ];
  void answerQuestion() {
    setState(() {
      questionIndex++;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: (questionIndex < questions.length)
            ? Quiz(
                questionIndex: questionIndex,
                questions: questions,
                answerQuestion: answerQuestion,
              )
            : Result(),
      ),
    );
  }
}
