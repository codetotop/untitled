part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class CounterIncrementClicked extends CounterEvent {
  CounterIncrementClicked();
}
