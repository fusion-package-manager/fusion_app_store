import 'package:flutter/material.dart' show State, StatefulWidget, Widget;
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:fusion_app_store/app/auth/presentation/splash/splash_controller.dart';
import 'package:fusion_app_store/app/auth/presentation/splash/states/splash_initialized_state_view.dart';
import 'package:fusion_app_store/utils/screens/unsupported_device_screen.dart';

class SplashView extends View {
  const SplashView({super.key});

  @override
  State<StatefulWidget> createState() => SplashViewState();
}

class SplashViewState
    extends ResponsiveViewState<SplashView, SplashController> {
  SplashViewState() : super(SplashController());

  @override
  Widget get desktopView =>
      ControlledWidgetBuilder<SplashController>(builder: (context, controller) {
        return SplashInitializedStateView(
          controller: controller,
        );
      });

  @override
  Widget get mobileView => const UnsupportedDeviceScreen();

  @override
  Widget get tabletView => const UnsupportedDeviceScreen();

  @override
  Widget get watchView => const UnsupportedDeviceScreen();
}
