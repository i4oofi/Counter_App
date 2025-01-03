import 'package:counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterBIncreamentState());

  int teamApoints = 0;

  int teamBpoints = 0;

  // ignore: non_constant_identifier_names
  void TeamIncreament({required int buttonNumber, required String team}) {
    if (team == "A") {
      teamApoints += buttonNumber;
      emit(CounterAIncreamentState());
    } else {
      teamBpoints += buttonNumber;
      emit(CounterBIncreamentState());
    }
  }

  void ReturntoZero() {
    teamApoints = 0;
    teamBpoints = 0;
    emit(CounterInitialState());
  }
}
