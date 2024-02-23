
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterIncrementClicked, CounterInitial> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterIncrementClicked>((event, emit) {
      int count = state.count;
      int counterIncrement = ++count;
      CounterInitial newState = state.copyWith(count: counterIncrement);
      emit(newState);
    });
  }
}
