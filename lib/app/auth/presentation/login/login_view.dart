import 'package:flutter/material.dart' show State, StatefulWidget, Widget;
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:fusion_app_store/app/auth/presentation/login/login_controller.dart';
import 'package:fusion_app_store/app/auth/presentation/login/login_state_machine.dart';
import 'package:fusion_app_store/app/auth/presentation/login/states/login_initialized_state_view.dart';
import 'package:fusion_app_store/constants/unrecognized_state_exception.dart';

class LoginView extends View {
  const LoginView({super.key});

  @override
  State<StatefulWidget> createState() => LoginViewState();
}

class LoginViewState extends ResponsiveViewState<LoginView, LoginController> {
  LoginViewState() : super(LoginController());

  @override
  Widget get desktopView => ControlledWidgetBuilder<LoginController>(
        builder: (context, controller) {
          final currentStateType = controller.getCurrentState().runtimeType;
          switch (currentStateType) {
            case LoginInitializedState:
              return const LoginInitializedStateView();
            case LoginFailedState:
              return const LoginInitializedStateView();
          }
          throw UnrecognizedStateException();
        },
      );

  @override
  Widget get mobileView => throw UnimplementedError();

  @override
  Widget get tabletView => throw UnimplementedError();

  @override
  Widget get watchView => throw UnimplementedError();
}
