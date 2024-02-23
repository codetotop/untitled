part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {
  final int count;
  CounterInitial({this.count = 0});

  CounterInitial copyWith({int? count}) {
    return CounterInitial(count: count?? this.count);
  }
}
