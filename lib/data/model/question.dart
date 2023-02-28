import 'package:equatable/equatable.dart';
import 'package:quiz_app_bloc/data/model/answear.dart';

class Question extends Equatable {
  final int questionNumber;
  final String questionText;
  final List<Answear> answears;
  final int goodAnswearIndex;

  Question({
    required this.questionNumber,
    required this.questionText,
    required this.answears,
    required this.goodAnswearIndex,
  });

  @override
  List<Object?> get props => [questionNumber, questionText];
}
