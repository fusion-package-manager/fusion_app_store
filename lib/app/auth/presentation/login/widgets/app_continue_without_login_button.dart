import 'package:flutter/material.dart';
import 'package:fusion_app_store/config/theme/app_theme.dart';

class AppContinueWithoutLoginButton extends StatefulWidget {
  const AppContinueWithoutLoginButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  State<AppContinueWithoutLoginButton> createState() =>
      _AppContinueWithoutLoginButtonState();
}

class _AppContinueWithoutLoginButtonState
    extends State<AppContinueWithoutLoginButton> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => setState(() => hover = true),
      onExit: (event) => setState(() => hover = false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Continue without Login",
              style: AppTheme.fontSize(13).copyWith(
                decoration: hover ? TextDecoration.underline : null,
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_right,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
