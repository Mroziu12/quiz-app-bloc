import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_bloc/bloc/question-bloc/question_bloc.dart';

import '../../bloc/answear-cubit/answear_cubit.dart';

class NextQuestionButton extends StatelessWidget {
  const NextQuestionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => loadNextQuestion(context),
      child: Text("Next Question"),
    );
  }
}

void loadNextQuestion(BuildContext context) {
  QuestionBloc questionBloc = BlocProvider.of<QuestionBloc>(context);
  questionBloc.add(GetNextQuestion());
  AnswearCubit answearCubit = BlocProvider.of<AnswearCubit>(context);
  answearCubit.onNextQuestionLoaded();
}
