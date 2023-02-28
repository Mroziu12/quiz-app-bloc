import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_bloc/bloc/answear-cubit/answear_cubit.dart';

class AnswearOption extends StatelessWidget {
  final String answearText;
  final int answearIndex;
  final bool isColored;
  final int goodAnswearIndex;
  const AnswearOption(
      {super.key,
      required this.answearText,
      required this.answearIndex,
      required this.isColored,
      required this.goodAnswearIndex});

  @override
  Widget build(
    BuildContext context,
  ) {
    return ElevatedButton(
        onPressed: () => clickAnswear(context, answearIndex, goodAnswearIndex),
        style: ElevatedButton.styleFrom(
          backgroundColor: isColored
              ? (answearIndex == goodAnswearIndex ? Colors.green : Colors.red)
              : Colors.blue,
        ),
        child: Text(answearText));
  }
}

void clickAnswear(
    BuildContext context, int answearIndex, int goodAnswearIndex) {
  if (answearIndex == goodAnswearIndex) {
    AnswearCubit answearCubit = BlocProvider.of<AnswearCubit>(context);
    answearCubit.goodAnswearSubmited(answearIndex);
  } else {
    AnswearCubit answearCubit = BlocProvider.of<AnswearCubit>(context);
    answearCubit.badAnswearSubmited(answearIndex, goodAnswearIndex);
  }
}
