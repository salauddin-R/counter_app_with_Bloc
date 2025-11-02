import 'package:counter_with_block/block/CounterState.dart';
import 'package:counter_with_block/block/Counter_Event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counterblock extends Bloc<CounterEvent, Counterstate> {
  Counterblock() : super(Counterstate(0)) {
    on<Increment>((event, emit) => emit(Counterstate(state.count + 1)));
    on<Decrement>((event, emit) => emit(Counterstate(state.count - 1)));
  }
}
