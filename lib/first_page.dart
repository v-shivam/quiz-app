import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Column(
      //mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            height: 300,
            color: Color.fromARGB(122, 255, 255, 255),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const SizedBox(
          height: 30,
          child: Text(
            'Welcome to the Quiz app!',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ), //

        OutlinedButton.icon(
          onPressed: startQuiz,
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            'Start Quiz',
            textScaleFactor: 2,
          ),
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            'Add Question',
            textScaleFactor: 2,
          ),
        )
      ],
    );
  }
}
