import 'package:flutter/material.dart' show State, StatefulWidget, Widget;
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:fusion_app_store/app/store/presentation/store/states/store_initialization_state_view.dart';
import 'package:fusion_app_store/app/store/presentation/store/store_controller.dart';
import 'package:fusion_app_store/app/store/presentation/store/store_state_machine.dart';
import 'package:fusion_app_store/constants/unrecognized_state_exception.dart';
import 'package:fusion_app_store/utils/screens/unsupported_device_screen.dart';

class StoreView extends View {
  const StoreView({super.key});

  @override
  State<StatefulWidget> createState() => StoreStateView();
}

class StoreStateView extends ResponsiveViewState<StoreView, StoreController> {
  StoreStateView() : super(StoreController());

  @override
  Widget get desktopView => ControlledWidgetBuilder<StoreController>(
        builder: (context, controller) {
          final currentState = controller.getCurrentState();
          final currentStateType = currentState.runtimeType;
          switch (currentStateType) {
            case StoreInitializationState:
              controller.initStore();
              return const StoreInitializationStateView();
            default:
              throw UnrecognizedStateException();
          }
        },
      );

  @override
  Widget get mobileView => const UnsupportedDeviceScreen();

  @override
  Widget get tabletView => const UnsupportedDeviceScreen();

  @override
  Widget get watchView => const UnsupportedDeviceScreen();
}
