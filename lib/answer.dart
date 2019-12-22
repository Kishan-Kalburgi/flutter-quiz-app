import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  final Color color;

  Answer(this.selectHandler, this.answerText, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: RaisedButton(
        color: color,
        textColor: Colors.white,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 20),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
