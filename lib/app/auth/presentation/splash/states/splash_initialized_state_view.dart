import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:fusion_app_store/app/auth/presentation/splash/splash_controller.dart';

class SplashInitializedStateView extends StatefulWidget {
  const SplashInitializedStateView({super.key, required this.controller});

  final SplashController controller;

  @override
  State<SplashInitializedStateView> createState() =>
      _SplashInitializedStateViewState();
}

class _SplashInitializedStateViewState
    extends State<SplashInitializedStateView> {
  @override
  void initState() {
    widget.controller.checkLoginStatus();
    super.initState();
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
          ],
        ),
      ),
    );
  }
}
