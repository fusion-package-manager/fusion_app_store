import 'package:flutter/material.dart';
import 'package:fusion_app_store/config/theme/app_theme.dart';

class AppTextButton extends StatefulWidget {
  const AppTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  State<AppTextButton> createState() => _AppTextButtonState();
}

class _AppTextButtonState extends State<AppTextButton> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: MouseRegion(
        onEnter: (event) => setState(() => hover = true),
        onExit: (event) => setState(() => hover = false),
        child: GestureDetector(
          onTap: widget.onPressed,
          child: AnimatedScale(
            duration: const Duration(milliseconds: 250),
            scale: hover ? 0.9 : 1.0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 8),
              decoration: BoxDecoration(
                color: AppTheme.textButtonBackground,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: Text(
                  widget.text,
                  style: AppTheme.textButtonStyle,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
