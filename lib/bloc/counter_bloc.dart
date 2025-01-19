import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(TeamIncreament(teamA: 0, teamB: 0)) {
    on<TeamIncreamentEvent>(teamIncreamentHandler); // ✅ استدعاء دالة منفصلة
    on<ResetEvent>(resetHandler); // ✅ استدعاء دالة منفصلة
  }

  // 🛠 دالة لمعالجة حدث زيادة النقاط
  void teamIncreamentHandler(
      TeamIncreamentEvent event, Emitter<CounterState> emit) {
    final currentState = state as TeamIncreament;
    emit(currentState.copyWith(
      teamA: event.team == 'A'
          ? currentState.teamA + event.points
          : currentState.teamA,
      teamB: event.team == 'B'
          ? currentState.teamB + event.points
          : currentState.teamB,
    ));
  }

  // 🛠 دالة لمعالجة حدث Reset
  void resetHandler(ResetEvent event, Emitter<CounterState> emit) {
    emit(TeamIncreament(teamA: 0, teamB: 0));
  }
}
