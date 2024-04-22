import 'package:adv_basics/widgets/colored_circle.dart';
import 'package:adv_basics/widgets/question.dart';
import 'package:flutter/material.dart';

class QuestionResultItem extends StatelessWidget {
  final Map<String, dynamic> data;

  const QuestionResultItem({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isCorrect = data['user_answer'] == data['correct_answer'];
    Color circleColor = isCorrect ? Colors.blue.shade300 : Colors.red.shade300;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionCircle(
              circleColor: circleColor, questionIndex: data['question_index']),
          Expanded(
            child: QuestionText(
              question: data['question'] as String,
              userAnswer: data['user_answer'] as String,
              correctAnswer: data['correct_answer'] as String,
            ),
          ),
        ],
      ),
    );
  }
}
