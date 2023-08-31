import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:fusion_app_store/app/auth/presentation/login/login_presenter.dart';
import 'package:fusion_app_store/app/auth/presentation/login/login_state_machine.dart';
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
}
