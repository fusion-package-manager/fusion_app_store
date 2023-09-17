import 'package:flutter/material.dart' show State, StatefulWidget, Widget;
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:fusion_app_store/app/auth/presentation/login/login_controller.dart';
import 'package:fusion_app_store/app/auth/presentation/login/login_state_machine.dart';
import 'package:fusion_app_store/app/auth/presentation/login/states/login_initialized_state_view.dart';
import 'package:fusion_app_store/app/auth/presentation/login/states/login_overview_state_view.dart';
import 'package:fusion_app_store/constants/unrecognized_state_exception.dart';
import 'package:fusion_app_store/utils/screens/unsupported_device_screen.dart';

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
          final loginState = controller.getCurrentState();
          final currentStateType = loginState.runtimeType;
          switch (currentStateType) {
            case LoginOverviewState:
              controller.redirectToStoreIfLoggedIn();
              return LoginOverviewStateView(controller: controller);
            case LoginFailedState:
            case LoginInitializedState:
              return LoginInitializedStateView(
                controller: controller,
                state: loginState,
              );
          }
          throw UnrecognizedStateException();
        },
      );

  @override
  Widget get mobileView => const UnsupportedDeviceScreen();

  @override
  Widget get tabletView => const UnsupportedDeviceScreen();

  @override
  Widget get watchView => const UnsupportedDeviceScreen();
}
