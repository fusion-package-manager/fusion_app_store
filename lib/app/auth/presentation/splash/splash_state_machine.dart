import 'package:fusion_app_store/core/state_machine.dart';

class SplashStateMachine extends StateMachine<SplashState, SplashEvent> {
  SplashStateMachine() : super(SplashInitializedState());

  @override
  SplashState getStateOnEvent(SplashEvent event) {
    return currentState;
  }
}

// Events
enum SplashEvent {
  initialized,
}

// States
class SplashState {}

class SplashInitializedState extends SplashState {}
