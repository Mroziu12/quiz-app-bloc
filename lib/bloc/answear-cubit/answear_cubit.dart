import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'answear_state.dart';

class AnswearCubit extends Cubit<AnswearState> {
  AnswearCubit() : super(AnswearInitial());
}
