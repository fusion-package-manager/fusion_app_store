import 'package:fusion_app_store/core/state_machine.dart';

class LoginStateMachine extends StateMachine<LoginState, LoginEvent> {
  LoginStateMachine() : super(LoginInitializedState());

  @override
  LoginState getStateOnEvent(LoginEvent event) {
    switch (event) {
      case LoginEvent.initialized:
        return LoginInitializedState();
      case LoginEvent.success:
        return LoginSuccessState();
      case LoginEvent.failed:
        return LoginFailedState();
    }
  }
}

// Events
enum LoginEvent {
  initialized,
  success,
  failed,
}

// States
class LoginState {}

class LoginInitializedState extends LoginState {}

class LoginSuccessState extends LoginState {}

class LoginFailedState extends LoginState {}
