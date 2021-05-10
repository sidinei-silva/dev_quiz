import 'package:flutter/material.dart';

import 'package:DevQuiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:DevQuiz/shared/models/question_model.dart';

import '../../../core/core.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel question;

  const QuizWidget({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question.title,
          style: AppTextStyles.heading,
        ),
        SizedBox(
          height: 24,
        ),
        ...question.answers
            .map(
              (anwser) => AwnserWidget(
                isRight: anwser.isRight,
                title: anwser.title,
              ),
            )
            .toList(),
      ],
    );
  }
}
