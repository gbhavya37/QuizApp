import 'package:flutter/material.dart';
import 'package:quizapp/answerbutton.dart';
import 'package:quizapp/data/quest.dart';

class ChangeQuestion extends StatefulWidget {
  const ChangeQuestion({super.key});

  @override
  State<ChangeQuestion> createState() {
    return Question();
  }
}

class Question extends State<ChangeQuestion> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(answerText: answer, onTap: () {});
          }),
        ],
      ),
    );
  }
}
