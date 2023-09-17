import 'package:fusion_app_store/constants/unrecognized_event_exception.dart';
import 'package:fusion_app_store/core/state_machine.dart';

class StoreStateMachine extends StateMachine<StoreState, StoreEvent> {
  StoreStateMachine() : super(StoreInitializationState());

  @override
  StoreState getStateOnEvent(StoreEvent event) {
    switch (event.runtimeType) {
      case StoreInitializationEvent:
        return StoreInitializationState();
      default:
        throw UnrecognizedEventException();
    }
  }
}

// States
class StoreState {}

class StoreInitializationState extends StoreState {}

// Events
class StoreEvent {}

class StoreInitializationEvent extends StoreEvent {}
