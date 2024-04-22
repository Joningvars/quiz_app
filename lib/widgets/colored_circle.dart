import 'package:flutter/material.dart';

class QuestionCircle extends StatelessWidget {
  final Color circleColor;
  final int questionIndex;

  const QuestionCircle({
    Key? key,
    required this.circleColor,
    required this.questionIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 20),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: circleColor,
          shape: BoxShape.circle,
        ),
        child: Text(
          (questionIndex + 1).toString(),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
