import 'package:flutter/material.dart';

class AppLearnMoreButton extends StatefulWidget {
  const AppLearnMoreButton({super.key});

  @override
  State<AppLearnMoreButton> createState() => _AppLearnMoreButtonState();
}

class _AppLearnMoreButtonState extends State<AppLearnMoreButton> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => hover = true),
      onExit: (event) => setState(() => hover = false),
      child: GestureDetector(
        onTap: () {
          // TODO: Learn More Page Link
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 9),
          decoration: BoxDecoration(
            color: hover ? Colors.orange : const Color(0xFFFBEBEA),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Text(
            "Learn More About Fusion",
            style: TextStyle(
              fontFamily: "Sen",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: hover ? Colors.white : const Color(0xFF363636),
            ),
          ),
        ),
      ),
    );
  }
}
