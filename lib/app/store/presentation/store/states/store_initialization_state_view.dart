import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class StoreInitializationStateView extends StatefulWidget {
  const StoreInitializationStateView({super.key});

  @override
  State<StoreInitializationStateView> createState() =>
      _StoreInitializationStateViewState();
}

class _StoreInitializationStateViewState
    extends State<StoreInitializationStateView> {
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
          ],
        ),
      ),
    );
  }
}
