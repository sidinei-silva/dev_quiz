import 'package:flutter/material.dart';

import 'package:DevQuiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:DevQuiz/shared/models/question_model.dart';

import '../../../core/core.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final ValueChanged<bool> onSelected;

  const QuizWidget({
    Key? key,
    required this.question,
    required this.onSelected,
  }) : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.question.title,
          style: AppTextStyles.heading,
        ),
        SizedBox(
          height: 24,
        ),
        ...widget.question.answers.asMap().entries.map(
          (anwser) {
            return AwnserWidget(
              answer: anwser.value,
              disabled: indexSelected != -1,
              isSelected: indexSelected == anwser.key,
              onTap: (value) {
                indexSelected = anwser.key;
                setState(() {});
                Future.delayed(Duration(seconds: 1))
                    .then((_) => widget.onSelected(value));
              },
            );
          },
        ).toList(),
      ],
    );
  }
}
