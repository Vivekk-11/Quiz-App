import 'package:flutter/material.dart';
import 'package:third_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Question",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton("Answer 1", () {}),
          AnswerButton("Answer 2", () {}),
          AnswerButton("Answer 3", () {}),
          AnswerButton("Answer 4", () {}),
        ],
      ),
    );
  }
}
