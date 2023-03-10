part of 'answear_cubit.dart';

abstract class AnswearState extends Equatable {
  const AnswearState();
  @override
  List<Object> get props => [];
}

class AnswearInitial extends AnswearState {}

class AnswearSubmitted extends AnswearState {
  final List<bool> toColor;

  AnswearSubmitted(this.toColor);
  @override
  List<Object> get props => [toColor];
}
