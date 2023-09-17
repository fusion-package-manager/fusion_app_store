import 'package:fusion_app_store/constants/enumerations.dart';
import 'package:fusion_app_store/constants/unrecognized_event_exception.dart';
import 'package:fusion_app_store/core/state_machine.dart';

class StoreStateMachine extends StateMachine<StoreState, StoreEvent> {
  StoreStateMachine() : super(StoreInitializationState(syncCompletionData: {}));

  @override
  StoreState getStateOnEvent(StoreEvent event) {
    switch (event.runtimeType) {
      case StoreInitializationEvent:
        var storeEvent = event as StoreInitializationEvent;
        return StoreInitializationState(
          syncCompletionData: storeEvent.syncCompletionData,
        );
      default:
        throw UnrecognizedEventException();
    }
  }
}

// States
class StoreState {}

class StoreInitializationState extends StoreState {
  final Map<SyncCompletionTypes, bool> syncCompletionData;

  StoreInitializationState({required this.syncCompletionData});
}

// Events
class StoreEvent {}

class StoreInitializationEvent extends StoreEvent {
  final Map<SyncCompletionTypes, bool> syncCompletionData;

  StoreInitializationEvent({required this.syncCompletionData});
}
