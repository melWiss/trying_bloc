// this will contain the counter buisiness logic

import 'package:bloc/bloc.dart';
import 'package:trying_bloc/src/counter/counter_model.dart';
import 'package:trying_bloc/src/counter/some_classes/person.dart';

abstract class CounterEvent {}

class IncrementCounterEvent extends CounterEvent {}

class DecrementCounterEvent extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, Counter> {
  CounterBloc() : super(Counter()) {
    on<IncrementCounterEvent>(
        (event, emit) => emit(state.copyWith(value: state.value + 1)));
    on<DecrementCounterEvent>(
        (event, emit) => emit(state.copyWith(value: state.value - 1)));
  }
}

class CounterCubit extends Cubit<Counter> {
  CounterCubit() : super(Counter());

  increment() => emit(state.copyWith(value: state.value + 1));
  decrement() => emit(state.copyWith(value: state.value - 1));
}

CounterBloc counterBloc = CounterBloc();
CounterCubit counterCubit = CounterCubit();
