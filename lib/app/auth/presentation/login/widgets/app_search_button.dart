import 'package:flutter/material.dart';
import 'package:fusion_app_store/config/assets/app_icons.dart';

class AppSearchButton extends StatefulWidget {
  const AppSearchButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  State<AppSearchButton> createState() => _AppSearchButtonState();
}

class _AppSearchButtonState extends State<AppSearchButton> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: MouseRegion(
        onEnter: (event) => setState(() => hover = true),
        onExit: (event) => setState(() => hover = false),
        child: GestureDetector(
          onTap: widget.onPressed,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                  color: hover ? Colors.blue : Colors.black, width: 3),
            ),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    AppIcons.search,
                    width: 32,
                  ),
                  const Text(
                    "Explore the Fusion Store",
                    style: TextStyle(
                      fontFamily: "Sen",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
