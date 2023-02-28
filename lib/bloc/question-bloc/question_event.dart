part of 'question_bloc.dart';

abstract class QuestionEvent extends Equatable {
  const QuestionEvent();
}

class GetNextQuestion extends QuestionEvent {
  GetNextQuestion();

  @override
  List<Object> get props => [];
}

class StartNewQuiz extends QuestionEvent {
  StartNewQuiz();

  @override
  List<Object> get props => [];
}

class GoodAnswearSubmitted extends QuestionEvent {
  GoodAnswearSubmitted();
  //TODO możliwe duplikacja nazwy
  @override
  List<Object> get props => [];
}
