import 'package:flutter/material.dart';
import 'package:fusion_app_store/app/auth/presentation/login/login_controller.dart';
import 'package:fusion_app_store/app/auth/presentation/login/login_state_machine.dart';
import 'package:fusion_app_store/app/auth/presentation/login/widgets/app_continue_without_login_button.dart';
import 'package:fusion_app_store/app/auth/presentation/login/widgets/app_learn_more_button.dart';
import 'package:fusion_app_store/app/auth/presentation/login/widgets/app_login_button.dart';
import 'package:fusion_app_store/config/assets/app_backgrounds.dart';
import 'package:fusion_app_store/config/assets/app_icons.dart';
import 'package:fusion_app_store/config/theme/app_theme.dart';
import 'package:fusion_app_store/constants/app_features.dart';

class LoginInitializedStateView extends StatelessWidget {
  const LoginInitializedStateView({
    super.key,
    required this.controller,
    required this.state,
  });

  final LoginController controller;
  final LoginState state;

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
              height: 750,
              child: Stack(
                children: [
                  Align(
                    child: Container(
                      width: 800,
                      height: 500,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.46),
                            blurRadius: 16,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          // Credential Form
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 66.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ShaderMask(
                                    blendMode: BlendMode.srcIn,
                                    shaderCallback: (bounds) =>
                                        const LinearGradient(
                                      colors: [
                                        Color(0xFF35B38D),
                                        Color(0xFF356FB3),
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.bottomRight,
                                    ).createShader(bounds),
                                    child: RichText(
                                      text: TextSpan(
                                        text: "Login to",
                                        style: AppTheme.fontSize(30).makeBold(),
                                        children: [
                                          TextSpan(
                                            text: " Fusion",
                                            style: AppTheme.fontSize(30)
                                                .makeExtraBold(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "with",
                                    style: AppTheme.fontSize(16)
                                        .makeBold()
                                        .withColor(const Color(0xFF919090)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        AppIcons.github,
                                        width: 40,
                                      ),
                                      const SizedBox(width: 4),
                                      Image.asset(
                                        AppIcons.githubText,
                                        width: 113,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 24),
                                  AppContinueWithoutLoginButton(
                                    onPressed: () {
                                      // TODO: Add Link to Home
                                    },
                                  ),
                                  const SizedBox(height: 21),
                                  AppLoginButton(
                                    onPressed: () {
                                      controller.tryLogin();
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Feature List
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 51.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: AppFeatures.loginFeatureSet.entries
                                    .map((e) {
                                  return Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 13.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        e.key,
                                        const SizedBox(width: 7),
                                        Text(
                                          e.value,
                                          style: AppTheme.fontSize(16),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          // Tree Icon
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 13.0),
                              child: Image.asset(
                                AppIcons.ecosystem,
                                width: 125,
                              ),
                            ),
                          ),
                          // Info
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, bottom: 18.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    AppIcons.info,
                                    width: 24,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    "Did you know? You can even publish your Linux Packages or any shell script on Fusion.",
                                    style: AppTheme.fontSize(14).makeBold(),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      AppIcons.fusion,
                      width: 250,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Learn More Button
          const Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(24),
              child: AppLearnMoreButton(),
            ),
          ),
        ],
      ),
    );
  }
}
