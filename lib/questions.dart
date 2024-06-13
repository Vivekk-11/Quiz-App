import 'package:flutter/material.dart';
import 'package:third_app/answer_button.dart';
import 'package:third_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffleList().map((item) {
              return AnswerButton(item, answerQuestion);
            })
          ],
        ),
      ),
    );
  }
}
