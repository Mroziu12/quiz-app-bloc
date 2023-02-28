part of 'question_bloc.dart';

abstract class QuestionState extends Equatable {
  const QuestionState();
}

class QuestionInitial extends QuestionState {
  QuestionInitial();
  @override
  List<Object> get props => [];
}

class QuestionLoaded extends QuestionState {
  final Question question;
  QuestionLoaded(this.question);
  @override
  List<Object> get props => [question];
}

class QuestionEnd extends QuestionState {
  final int points;
  QuestionEnd(this.points);
  @override
  List<Object> get props => [points];
}

class QuestionError extends QuestionState {
  final String message;
  QuestionError(this.message);
  @override
  List<Object> get props => [message];
}
