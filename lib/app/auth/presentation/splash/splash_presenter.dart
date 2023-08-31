import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:fusion_app_store/app/auth/domain/usecases/user_login_status.usecase.dart';
import 'package:fusion_app_store/core/observer.dart';

class SplashPresenter extends Presenter {
  final UserLoginStateUseCase _userLoginStateUseCase;

  SplashPresenter(this._userLoginStateUseCase);

  @override
  void dispose() {
    _userLoginStateUseCase.dispose();
  }

  void isUserLoggedIn({required UseCaseObserver observer}) {
    _userLoginStateUseCase.execute(observer);
  }
}
