part of 'timer_bloc.dart';

@immutable
abstract class TimerState extends Equatable {
  final int duration;
  const TimerState(this.duration);

  @override
  List<Object?> get props => [duration];

}

class TimerInitial extends TimerState {
  const TimerInitial(super.duration);

  @override
  String toString() {
    return 'TimeInitial { duration: $duration }';
  }
}

class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(super.duration);

  @override
  String toString() {
    return 'TimeRunInProgress { duration: $duration }';
  }
}

class TimerRunPause extends TimerState {
  const TimerRunPause(super.duration);

  @override
  String toString() {
    return 'TimerRunPause { duration: $duration }';
  }
}

class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(0);

  @override
  String toString() {
    return 'TimerRunComplete { duration: $duration }';
  }
}


