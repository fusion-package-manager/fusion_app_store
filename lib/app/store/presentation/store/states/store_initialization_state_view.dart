import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:fusion_app_store/app/store/presentation/store/store_state_machine.dart';
import 'package:fusion_app_store/config/theme/app_theme.dart';

class StoreInitializationStateView extends StatefulWidget {
  const StoreInitializationStateView({super.key, required this.state});

  final StoreInitializationState state;

  @override
  State<StoreInitializationStateView> createState() =>
      _StoreInitializationStateViewState();
}

class _StoreInitializationStateViewState
    extends State<StoreInitializationStateView> {
  String getLoadingText() {
    String text = "";
    var data = widget.state.syncCompletionData;
    int completions = data.values.where((value) => value).length;
    if (completions == 0) {
      text = "Syncing Users ...";
    } else if (completions == 1) {
      text = "Syncing Apps ...";
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/icons/fusion-app-icon.png',
              width: 250,
              height: 250,
            ).animate().shimmer(duration: const Duration(seconds: 2)),
            const SizedBox(height: 10),
            const CircularProgressIndicator(),
            const SizedBox(height: 10),
            Text(
              getLoadingText(),
              style: AppTheme.fontSize(20),
            ),
          ],
        ),
      ),
    );
  }
}
