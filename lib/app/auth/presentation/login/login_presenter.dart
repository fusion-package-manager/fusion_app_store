import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:fusion_app_store/app/auth/domain/usecases/user_login.usecase.dart';
import 'package:fusion_app_store/app/auth/domain/usecases/user_logout.usecase.dart';
import 'package:fusion_app_store/core/observer.dart';

class LoginPresenter extends Presenter {
  final UserLoginUseCase _userLoginUseCase;
  final UserLogOutUseCase _userLogOutUseCase;

  LoginPresenter(
    this._userLoginUseCase,
    this._userLogOutUseCase,
  );

  @override
  void dispose() {
    _userLoginUseCase.dispose();
    _userLogOutUseCase.dispose();
  }

  void login({required UseCaseObserver observer}) {
    _userLoginUseCase.execute(observer);
  }

  void logOut({required UseCaseObserver observer}) {
    _userLogOutUseCase.execute(observer);
  }
}
