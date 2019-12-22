import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10, 'color': Colors.black},
        {'text': 'Red', 'score': 5, 'color': Colors.red},
        {'text': 'Green', 'score': 3, 'color': Colors.green},
        {'text': 'Purple', 'score': 1, 'color': Colors.purple},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabit', 'score': 3, 'color': Colors.blue},
        {'text': 'Snake', 'score': 11, 'color': Colors.blue},
        {'text': 'Elephat', 'score': 5, 'color': Colors.blue},
        {'text': 'Lion', 'score': 9, 'color': Colors.blue},
      ]
    },
    {
      'questionText': 'What\'s your favorite Movie?',
      'answers': [
        {'text': 'Avenger', 'score': 3, 'color': Colors.blue},
        {'text': 'FUN2', 'score': 3, 'color': Colors.blue},
        {'text': 'Spiderman', 'score': 3, 'color': Colors.blue},
        {'text': 'Think..!', 'score': 3, 'color': Colors.blue},
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
