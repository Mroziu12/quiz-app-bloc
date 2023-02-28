import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_bloc/bloc/question-bloc/question_bloc.dart';
import 'package:quiz_app_bloc/data/model/question.dart';
import 'package:quiz_app_bloc/data/question_repositiry.dart';
import 'package:quiz_app_bloc/presentation/widgets/build-column-with-data.dart';
import 'package:quiz_app_bloc/presentation/widgets/build_init_and_end.dart';

import '../../bloc/answear-cubit/answear_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuestionBloc(QuestionRepository()),
      child: BlocProvider(
        create: (context) => AnswearCubit(),
        child: Scaffold(
          appBar: AppBar(
            title: Text("Quiz app"),
          ),
          body: SafeArea(
              child: Center(child: BlocBuilder<QuestionBloc, QuestionState>(
            builder: (context, state) {
              if (state is QuestionInitial) {
                return buildInit();
              } else if (state is QuestionLoaded) {
                return buildColumnWithData(context, state.question);
              } else if (state is QuestionError) {
                return Text("Blad Bazy danych");
              } else if (state is QuestionEnd) {
                return buildEnd(context, state.points);
              }

              return Text("Nieobsłużony state");
            },
          ))),
        ),
      ),
    );
  }
}
