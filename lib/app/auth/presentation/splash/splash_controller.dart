import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:fusion_app_store/app/auth/presentation/splash/splash_presenter.dart';
import 'package:fusion_app_store/app/auth/presentation/splash/splash_state_machine.dart';
import 'package:fusion_app_store/core/navigation_service.dart';
import 'package:fusion_app_store/core/observer.dart';
import 'package:fusion_app_store/main_common.dart';
import 'package:get/get.dart';

class SplashController extends Controller {
  final SplashPresenter _presenter;
  final SplashStateMachine _stateMachine;

  SplashController()
      : _presenter = Get.find<SplashPresenter>(),
        _stateMachine = SplashStateMachine();

  @override
  void initListeners() {}

  @override
  void onDisposed() {
    _presenter.dispose();
    super.onDisposed();
  }

  void checkLoginStatus() {
    _presenter.isUserLoggedIn(
      observer: UseCaseObserver(
        name: "UserLoginStatusObserver",
        onNext: (bool isLoggedIn) {
          switch (isLoggedIn) {
            case true:
              navigationService.navigateTo(page: NavigationService.storePage);
              break;
            case false:
              navigationService.navigateTo(page: NavigationService.loginPage);
          }
        },
      ),
    );
  }

  SplashState getCurrentState() {
    return _stateMachine.currentState;
  }
}
