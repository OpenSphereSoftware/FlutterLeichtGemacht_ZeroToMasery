import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerInitial());

  Future sleep1() {
    return Future.delayed(Duration(seconds: 2), () => "1");
  }

  @override
  Stream<AdvicerState> mapEventToState(
    AdvicerEvent event,
  ) async* {
    if (event is AdviceRequestedEvent) {
      yield AdvicerStateLoading();

      // do something
      await sleep1(); // fake network request
      // get advice

      yield AdvicerStateLoaded(advice: "our example advice");
    } 
    else if (event is ExampleEvent) {
      
    }
  }
}
