import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieBloc() : super(const MovieState()) {
    on<CounterIncrementClicked>((event, emit) {
      int count = state.count;
      int incrementCount = count + 1;
      final newState = state.copyWith(count: incrementCount);
      emit(newState);
    });
  }
}

