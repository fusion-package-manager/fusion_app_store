import 'package:flutter/material.dart';
import 'package:fusion_app_store/config/theme/app_theme.dart';

class AppLoginButton extends StatefulWidget {
  const AppLoginButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  State<AppLoginButton> createState() => _AppLoginButtonState();
}

class _AppLoginButtonState extends State<AppLoginButton> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => setState(() => hover = true),
      onExit: (event) => setState(() => hover = false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 51, vertical: 6),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xFF38CC8E),
                Color(0xFF1396BF),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            "Login",
            style: AppTheme.fontSize(14).makeBold().withColor(Colors.white),
          ),
        ),
      ),
    );
  }
}
