import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/question-bloc/question_bloc.dart';
import 'next-question-button.dart';

Column buildInit() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text("Naciśnij przycisk aby rozpocząć quiz"),
      NextQuestionButton(),
    ],
  );
}

Column buildEnd(BuildContext context, int points) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text("Quiz zakończony"),
      Text("Zdobyte punkty:"),
      Text(points.toString()),
      ElevatedButton(
        onPressed: () => restartQuiz(context),
        child: Text("Od Nowa"),
      ),
    ],
  );
}

void restartQuiz(BuildContext context) {
  QuestionBloc questionBloc = BlocProvider.of<QuestionBloc>(context);
  questionBloc.add(StartNewQuiz());
}
