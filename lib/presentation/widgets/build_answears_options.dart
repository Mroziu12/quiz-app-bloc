import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_bloc/presentation/widgets/next-question-button.dart';

import '../../data/model/answear.dart';
import '../../data/model/question.dart';

Column buildAnswearsOptions(BuildContext context, List<Answear> answears) {
  return Column(
    children: [
      AnswearOption(
          answearText: answears[0].answearText, isGood: answears[0].isGood),
      AnswearOption(
          answearText: answears[1].answearText, isGood: answears[1].isGood),
      AnswearOption(
          answearText: answears[2].answearText, isGood: answears[2].isGood),
    ],
  );
}

class AnswearOption extends StatelessWidget {
  final String answearText;
  final bool isGood;
  const AnswearOption(
      {super.key, required this.answearText, required this.isGood});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => clickAnswear(), child: Text(this.answearText));
  }
}

void clickAnswear() {}
