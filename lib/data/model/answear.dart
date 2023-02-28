import 'package:equatable/equatable.dart';

class Answear extends Equatable {
  final String answearText;

  Answear({
    required this.answearText,
  });

  @override
  List<Object?> get props => [answearText];
}
