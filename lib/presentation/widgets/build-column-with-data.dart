import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_bloc/bloc/answear-cubit/answear_cubit.dart';
import 'package:quiz_app_bloc/presentation/widgets/build_answears_options.dart';
import 'package:quiz_app_bloc/presentation/widgets/next-question-button.dart';

import '../../data/model/question.dart';

Column buildColumnWithData(BuildContext context, Question question) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text("Pytanie nr ${question.questionNumber}"),
      Text(question.questionText),
      Container(
          child: BlocProvider(
        create: (context) => AnswearCubit(),
        child: buildAnswearsOptions(
            context, question.answears, question.goodAnswearIndex),
      )),
      NextQuestionButton(),
    ],
  );
}
