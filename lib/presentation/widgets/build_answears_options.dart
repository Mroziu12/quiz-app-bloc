import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_bloc/bloc/answear-cubit/answear_cubit.dart';
import 'package:quiz_app_bloc/presentation/widgets/build_init_answears.dart';
import 'package:quiz_app_bloc/presentation/widgets/next-question-button.dart';

import '../../data/model/answear.dart';
import '../../data/model/question.dart';
import 'build_colored_answears.dart';

Container buildAnswearsOptions(
    BuildContext context, List<Answear> answears, int goodAnswearIndex) {
  return Container(
    child: BlocBuilder<AnswearCubit, AnswearState>(
      builder: (context, state) {
        if (state is AnswearInitial) {
          return buildInitAnswears(context, answears, goodAnswearIndex);
        } else if (state is AnswearSubmitted) {
          return buildColoredAnswears(
              context, answears, goodAnswearIndex, state.toColor);
        } else {
          return Text("Nie obsłużony CubitSTate");
        }
      },
    ),
  );
}
