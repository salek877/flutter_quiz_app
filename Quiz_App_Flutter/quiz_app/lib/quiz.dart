import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;
  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: Column(
        children: [
          Question(
            questions[questionIndex]['questionText'] as String,
          ),
          ...(questions[questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(answerQuestion, answer);
          }).toList()
        ],
      ),
    );
  }
}
