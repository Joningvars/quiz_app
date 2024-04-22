import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/pages/questions_results.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswers, required this.onReset});

  final List<String> chosenAnswers;
  final void Function() onReset;

  List<Map<String, Object>> getResults() {
    final List<Map<String, Object>> results = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      results.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }
    return results;
  }

  @override
  Widget build(BuildContext context) {
    final resultData = getResults();
    final numtotalQuestions = questions.length;
    final numcorrectQuestions = resultData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answered $numcorrectQuestions out of $numtotalQuestions questions correctly!',
            style: GoogleFonts.lato(
              fontSize: 23,
              textStyle: const TextStyle(fontWeight: FontWeight.bold),
              color: Colors.purple.shade200,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          QuestionResults(resultData: resultData),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: () {
              onReset();
            },
            label: Text(
              'Restart Quiz!',
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
            ),
          ),
        ],
      ),
    );
  }
}
