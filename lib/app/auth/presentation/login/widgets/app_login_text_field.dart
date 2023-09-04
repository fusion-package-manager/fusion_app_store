import 'package:flutter/material.dart';
import 'package:fusion_app_store/config/theme/app_theme.dart';

class AppLoginTextField extends StatefulWidget {
  const AppLoginTextField({
    super.key,
    required this.validator,
    required this.hintText,
    this.obscureText = false,
    required this.controller,
  });

  final String hintText;
  final String? Function(String) validator;
  final bool obscureText;
  final TextEditingController controller;

  @override
  State<AppLoginTextField> createState() => _AppLoginTextFieldState();
}

class _AppLoginTextFieldState extends State<AppLoginTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 246,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9).withOpacity(0.42),
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        cursorHeight: 28,
        decoration: InputDecoration(
          isDense: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Colors.green, width: 2),
          ),
          hintText: widget.hintText,
          hintStyle: AppTheme.fontSize(14).withColor(
            const Color(0xFFAFA9A9).withOpacity(0.75),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "* Required";
          }
          return widget.validator(value);
        },
      ),
    );
  }
}
