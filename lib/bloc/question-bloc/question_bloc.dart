import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quiz_app_bloc/data/cached_question_db.dart';
import 'package:quiz_app_bloc/data/question_repositiry.dart';

import '../../data/model/question.dart';

part 'question_event.dart';
part 'question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  final QuestionRepository questionRepository;
  int questionNumber = -1;
  int points = 0;
  QuestionBloc(this.questionRepository) : super(QuestionInitial()) {
    on<GetNextQuestion>((event, emit) {
      questionNumber++;
      try {
        final result = questionRepository.fetchQuestion(this.questionNumber);
        emit(QuestionLoaded(result));
      } catch (e) {
        if (e is DataBaseError) {
          questionNumber--;
          emit(QuestionError("Błąd bazy danych"));
        } else {
          emit(QuestionEnd(this.points));
        }
      }
    });
    on<StartNewQuiz>((event, emit) {
      questionNumber = -1;
      points = 0;
      emit(QuestionInitial());
    });
    on<GoodAnswearSubmitted>((event, emit) {
      points++;
    });
  }
}
