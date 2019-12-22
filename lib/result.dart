import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'assets/images/awesome.png';
    } else if (resultScore <= 12) {
      resultText = 'assets/images/likeable.png';
    } else if (resultScore <= 16) {
      resultText = 'assets/images/youarestrange.jpg';
    } else {
      resultText = 'assets/images/youarebadguy.jpg';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 225, 0, 0),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              resultPhrase,
              height: 200,
            ),
            FlatButton(
              child: Text(
                'Restart Quiz!',
              ),
              textColor: Colors.blue,
              onPressed: resetQuiz,
            )
          ],
        ),
      ),
    );
  }
}
