import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionText extends StatelessWidget {
  final String question;
  final String userAnswer;
  final String correctAnswer;

  const QuestionText({
    Key? key,
    required this.question,
    required this.userAnswer,
    required this.correctAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question,
          textAlign: TextAlign.left,
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          userAnswer,
          textAlign: TextAlign.left,
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              color: Color.fromARGB(150, 250, 250, 250),
            ),
          ),
        ),
        Text(
          correctAnswer,
          textAlign: TextAlign.left,
          style: GoogleFonts.lato(
            textStyle: TextStyle(color: Colors.blue.shade200),
          ),
        ),
      ],
    );
  }
}
