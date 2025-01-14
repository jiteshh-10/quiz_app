import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        )
        /*Opacity(
            opacity: 1,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ))*/
        ,
        const SizedBox(
          height: 40,
        ),
        Text(
          'Learn Flutter the Fun Way!',
          style: GoogleFonts.lato(
            fontSize: 28,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            'Start Quiz',
          ),
        )
      ],
    ));
  }
}
