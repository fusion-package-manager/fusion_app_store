import 'package:flutter/material.dart';
import 'package:fusion_app_store/config/assets/app_icons.dart';

class AppSourceCodeButton extends StatelessWidget {
  const AppSourceCodeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Link to GitHub Repo
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AppIcons.github,
              width: 24,
            ),
            const SizedBox(width: 5),
            const Text(
              "See Source Code",
              style: TextStyle(
                fontFamily: "Sen",
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
