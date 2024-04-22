import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 400,
          height: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(
          height: 75,
        ),
        const Text(
          'Learn Flutter the Fun Way!',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(
          height: 50,
        ),
        ElevatedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.flutter_dash_rounded),
            label: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ))
      ],
    ));
  }
}
