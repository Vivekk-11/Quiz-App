import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.text, this.pressHandler, {super.key});

  final String text;
  final void Function() pressHandler;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: pressHandler,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 10,
          ),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 33, 1, 99),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              40,
            ),
          )),
      child: Text(text),
    );
  }
}
