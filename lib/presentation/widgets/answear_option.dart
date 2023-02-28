import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_bloc/bloc/answear-cubit/answear_cubit.dart';
import 'package:quiz_app_bloc/bloc/question-bloc/question_bloc.dart';

class AnswearOption extends StatelessWidget {
  final String answearText;
  final int answearIndex;
  final bool isColored;
  final int goodAnswearIndex;
  final bool isEnabled;
  const AnswearOption({
    super.key,
    required this.answearText,
    required this.answearIndex,
    required this.isColored,
    required this.goodAnswearIndex,
    required this.isEnabled,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return ElevatedButton(
        onPressed: isEnabled
            ? () => clickAnswear(context, answearIndex, goodAnswearIndex)
            : null,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed))
                return Theme.of(context).colorScheme.primary.withOpacity(0.5);
              else if (states.contains(MaterialState.disabled))
                return isColored
                    ? (answearIndex == goodAnswearIndex
                        ? Colors.green
                        : Colors.red)
                    : Colors.blue;
              return Colors.blue; // Use the component's default.
            },
          ),
        ),
        child: Text(answearText));
  }
}

void clickAnswear(
    BuildContext context, int answearIndex, int goodAnswearIndex) {
  if (answearIndex == goodAnswearIndex) {
    AnswearCubit answearCubit = BlocProvider.of<AnswearCubit>(context);
    answearCubit.goodAnswearSubmited(answearIndex);
    QuestionBloc questionBloc = BlocProvider.of<QuestionBloc>(context);
    questionBloc.add(GoodAnswearSubmitted());
  } else {
    AnswearCubit answearCubit = BlocProvider.of<AnswearCubit>(context);
    answearCubit.badAnswearSubmited(answearIndex, goodAnswearIndex);
  }
}

            // isColored
            //    ? (answearIndex == goodAnswearIndex ? Colors.green : Colors.red)
            //    : Colors.blue,