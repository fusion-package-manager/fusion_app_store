import 'package:flutter/material.dart';
import 'package:fusion_app_store/config/assets/app_icons.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AppHelpButton extends StatelessWidget {
  const AppHelpButton({
    super.key,
    required this.helpUrl,
  });

  final String helpUrl;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        if (await canLaunchUrlString(helpUrl)) {
          await launchUrlString(helpUrl);
        }
      },
      icon: Image.asset(AppIcons.help),
      iconSize: 48,
    );
  }
}
