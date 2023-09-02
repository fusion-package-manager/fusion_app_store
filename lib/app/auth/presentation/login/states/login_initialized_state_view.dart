import 'package:flutter/material.dart';
import 'package:fusion_app_store/config/assets/app_backgrounds.dart';
import 'package:fusion_app_store/config/assets/app_icons.dart';
import 'package:fusion_app_store/config/theme/app_theme.dart';

class LoginInitializedStateView extends StatelessWidget {
  const LoginInitializedStateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Login Background
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              AppBackgrounds.login,
              fit: BoxFit.cover,
            ),
          ),
          // Login Container
          Align(
            child: Container(
              width: 800,
              height: 500,
              decoration: BoxDecoration(
                color: const Color(0xFFFBEBEA),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.46),
                    blurRadius: 16,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        AppIcons.fusion,
                        width: 142,
                        height: 124,
                      ),
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Meet",
                      style: AppTheme.fontSize(48),
                      children: [
                        TextSpan(
                          text: " Fusion",
                          style:
                              AppTheme.fontExtraBold.copyWith(fontSize: 48),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "\"The Only",
                      style: AppTheme.fontSize(16),
                      children: [
                        TextSpan(
                          text: " App Store",
                          style: AppTheme.fontBold.copyWith(fontSize: 16),
                        ),
                        TextSpan(
                          text: " of its kind\"",
                          style: AppTheme.fontBold
                              .copyWith(fontSize: 16)
                              .copyWith(fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
