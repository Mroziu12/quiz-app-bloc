import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'answear_state.dart';

class AnswearCubit extends Cubit<AnswearState> {
  AnswearCubit() : super(AnswearInitial());

  goodAnswearSubmited(int answarIndex) {
    List<bool> colored = List<bool>.filled(3, false);
    colored[answarIndex] = true;
    emit(AnswearSubmitted(colored));
    //TODO dodac punkt
  }

  badAnswearSubmited(int answarIndex, int goodAnswearIndex) {
    List<bool> colored = List<bool>.filled(3, false);
    colored[answarIndex] = true;
    colored[goodAnswearIndex] = true;
    emit(AnswearSubmitted(colored));
  }

  onNextQuestionLoaded() {
    emit(AnswearInitial());
  }
}
