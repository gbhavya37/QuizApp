import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 222, 160, 17),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/quiz-logo.png',
              width: 300,
              color: Colors.cyanAccent,
            ),

            const SizedBox(height: 80),

            const Text(
              'Learn Flutter',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            const SizedBox(height: 30),

            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
