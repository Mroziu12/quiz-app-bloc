import 'package:equatable/equatable.dart';

class Answear extends Equatable {
  final String answearText;
  final bool isGood;

  Answear({
    required this.answearText,
    required this.isGood,
  });

  @override
  List<Object?> get props => [answearText, isGood];
}
