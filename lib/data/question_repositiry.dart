import 'dart:math';

import 'package:quiz_app_bloc/data/cached_question_db.dart';
import 'package:quiz_app_bloc/data/model/question.dart';
import 'package:quiz_app_bloc/data/question_db.dart';

class QuestionRepository {
  Question fetchQuestion(int questionNumber) {
    // final random = Random();
    //! Nie Używać grozi zawaleniem
    // if (random.nextBool()) {
    //   throw DataBaseError();
    // }

    if (questionNumber > QuestionDB.length - 1) {
      throw OutOfQuestionError();
    }
    CachedQuestionDB.add(QuestionDB[questionNumber]);
    return QuestionDB[questionNumber];
  }
}

class DataBaseError extends Error {}

class OutOfQuestionError extends Error {}
