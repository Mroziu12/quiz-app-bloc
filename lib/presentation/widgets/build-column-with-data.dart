import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_bloc/presentation/widgets/build_answears_options.dart';
import 'package:quiz_app_bloc/presentation/widgets/next-question-button.dart';

import '../../data/model/question.dart';

Column buildColumnWithData(BuildContext context, Question question) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text("Pytanie nr ${question.questionNumber}"),
      Text(question.questionText),
      Container(child: buildAnswearsOptions(context, question.answears)),
      NextQuestionButton(),
    ],
  );
}
