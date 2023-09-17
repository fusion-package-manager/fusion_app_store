import 'package:flutter/material.dart';
import 'package:fusion_app_store/config/assets/app_animations.dart';
import 'package:fusion_app_store/config/theme/app_theme.dart';
import 'package:lottie/lottie.dart';

class UnsupportedDeviceScreen extends StatelessWidget {
  const UnsupportedDeviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset(
                AppAnimations.desktop,
              ),
              Text(
                "Hey, Fusion needs a bigger screen to work.",
                textAlign: TextAlign.center,
                style: AppTheme.fontSizeScaled(32),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
