import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:fusion_app_store/app/auth/presentation/login/login_controller.dart';
import 'package:fusion_app_store/app/auth/presentation/login/widgets/app_hanging_label.dart';
import 'package:fusion_app_store/app/auth/presentation/login/widgets/app_help_button.dart';
import 'package:fusion_app_store/app/auth/presentation/login/widgets/app_learn_more_button.dart';
import 'package:fusion_app_store/app/auth/presentation/login/widgets/app_search_button.dart';
import 'package:fusion_app_store/app/auth/presentation/login/widgets/app_source_code_button.dart';
import 'package:fusion_app_store/app/auth/presentation/login/widgets/app_text_button.dart';
import 'package:fusion_app_store/config/assets/app_backgrounds.dart';
import 'package:fusion_app_store/config/assets/app_icons.dart';
import 'package:fusion_app_store/config/theme/app_theme.dart';
import 'package:fusion_app_store/constants/app_manual_urls.dart';

class LoginOverviewStateView extends StatelessWidget {
  const LoginOverviewStateView({
    super.key,
    required this.controller,
  });

  final LoginController controller;

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
            child: SizedBox(
              width: 800,
              height: 515,
              child: Stack(
                children: [
                  // Content
                  Container(
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                top: 20.0,
                                left: 15.0,
                              ),
                              child: AppSourceCodeButton(),
                            ),
                            Image.asset(
                              AppIcons.fusion,
                              width: 142,
                              height: 124,
                            ).animate().shimmer(
                                delay: const Duration(seconds: 2),
                                duration: const Duration(seconds: 2)),
                          ],
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Meet",
                            style: AppTheme.fontSize(48),
                            children: [
                              TextSpan(
                                text: " Fusion",
                                style: AppTheme.fontExtraBold
                                    .copyWith(fontSize: 48),
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
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              AppTextButton(
                                text: "Login with GitHub",
                                onPressed: () {
                                  controller.showLoginUI();
                                },
                              ),
                              const SizedBox(height: 20),
                              AppTextButton(
                                text: "Create Fusion Account",
                                onPressed: () {},
                              ),
                              const SizedBox(height: 20),
                              AppSearchButton(onPressed: () {}),
                              const Align(
                                alignment: Alignment.bottomRight,
                                child: SizedBox(
                                  height: 80,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      right: 22.0,
                                      bottom: 17,
                                    ),
                                    child: AppHelpButton(
                                      helpUrl: AppManualUrls.loginHelp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Hanging Label
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: AppHangingLabel(
                        text: "The Multi-platform Desktop App Library"),
                  ),
                ],
              ),
            ),
          ),
          // Learn More Button
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: const AppLearnMoreButton().animate().move(
                    delay: const Duration(seconds: 2),
                    duration: const Duration(milliseconds: 500),
                    begin: const Offset(0, 100),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
