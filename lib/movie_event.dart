part of 'movie_bloc.dart';

abstract class MovieEvent extends Equatable {
  const MovieEvent();
}

class CounterIncrementClicked extends MovieEvent {
  const CounterIncrementClicked();

  @override
  List<Object> get props => [];
}
