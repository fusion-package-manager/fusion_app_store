import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:fusion_app_store/app/auth/presentation/login/login_presenter.dart';
import 'package:fusion_app_store/app/auth/presentation/login/login_state_machine.dart';
import 'package:fusion_app_store/config/theme/app_theme.dart';
import 'package:fusion_app_store/core/navigation_service.dart';
import 'package:fusion_app_store/core/observer.dart';
import 'package:fusion_app_store/main_common.dart';
import 'package:fusion_app_store/utils/popups/snack_bar_builder.dart';
import 'package:get/get.dart';

class LoginController extends Controller {
  final LoginPresenter _presenter;
  final LoginStateMachine _stateMachine;

  LoginController()
      : _presenter = Get.find<LoginPresenter>(),
        _stateMachine = LoginStateMachine();

  @override
  void initListeners() {}

  @override
  void onDisposed() {
    _presenter.dispose();
    super.onDisposed();
  }

  LoginState getCurrentState() {
    return _stateMachine.currentState;
  }

  void showLoginUI() {
    _stateMachine.onEvent(LoginEvent.initialized);
    refreshUI();
  }

  void redirectToStoreIfLoggedIn() {
    _presenter.isUserLoggedIn(
      observer: UseCaseObserver(
        name: "UserLoginStatusObserver",
        onNext: (bool isLoggedIn) {
          switch (isLoggedIn) {
            case true:
              navigationService.navigateTo(page: NavigationService.storePage);
              break;
            default:
            // just stay on the login page
          }
        },
      ),
    );
  }

  void tryLogin() {
    _presenter.login(
      observer: UseCaseObserver(
        name: "UserLoginUserCaseObserver",
        onComplete: () {},
        onError: (error) {
          debugPrint("Error while logging in: $error");
          SnackBarBuilder.showSnackBar(
              child: Text(
                "Login Process Failed",
                style: AppTheme.fontSize(16),
              ),
              type: SnackBarType.error);
          _stateMachine.onEvent(LoginEvent.failed);
          refreshUI();
        },
        onNext: (bool loggedIn) {
          if (loggedIn) {
            Get.find<NavigationService>()
                .navigateTo(page: NavigationService.storePage);
          }
        },
      ),
    );
  }
}
