part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class TeamIncreamentEvent extends CounterEvent {
  final int points;
  final String team;

  TeamIncreamentEvent({required this.points, required this.team});
}

class ResetEvent extends CounterEvent {}
