import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:fusion_app_store/app/auth/presentation/login/login_presenter.dart';
import 'package:fusion_app_store/app/auth/presentation/login/login_state_machine.dart';
import 'package:fusion_app_store/core/navigation_service.dart';
import 'package:fusion_app_store/core/observer.dart';
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

  void tryLogin() {
    _presenter.login(
      observer: UseCaseObserver(
        name: "UserLoginUserCaseObserver",
        onComplete: () {},
        onError: (error) {
          _stateMachine.onEvent(LoginEvent.failed);
          refreshUI();
        },
        onNext: (bool loggedIn) {
          if (loggedIn) {
            Get.find<NavigationService>()
                .navigateTo(page: NavigationService.splashPage);
          }
        },
      ),
    );
  }
}
