part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

class TeamIncreament extends CounterState {
  final int teamA;
  final int teamB;

  TeamIncreament({required this.teamA, required this.teamB});
  TeamIncreament copyWith({int? teamA, int? teamB}) {
    return TeamIncreament(
      teamA: teamA ?? this.teamA,
      teamB: teamB ?? this.teamB,
    );
  }
}
