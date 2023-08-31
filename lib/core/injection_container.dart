import 'package:flutter/foundation.dart';
import 'package:fusion_app_store/app/auth/data/auth_repository_impl.dart';
import 'package:fusion_app_store/app/auth/domain/repository/auth_repository.dart';
import 'package:fusion_app_store/app/auth/domain/usecases/user_login.usecase.dart';
import 'package:fusion_app_store/app/auth/domain/usecases/user_login_status.usecase.dart';
import 'package:fusion_app_store/app/auth/domain/usecases/user_logout.usecase.dart';
import 'package:fusion_app_store/app/auth/presentation/login/login_presenter.dart';
import 'package:fusion_app_store/app/auth/presentation/splash/splash_presenter.dart';
import 'package:fusion_app_store/core/navigation_service.dart';
import 'package:get/get.dart';

final class DependencyInjector {
  static Future<void> injectDependencies({VoidCallback? onComplete}) async {
    // Services
    Get.put<NavigationService>(NavigationService(), permanent: true);

    // Repositories
    Get.lazyPut<AuthRepository>(() => AuthRepositoryImpl());

    // UseCases
    Get.put(UserLoginStateUseCase(Get.find()));
    Get.put(UserLoginUseCase(Get.find()));
    Get.put(UserLogOutUseCase(Get.find()));

    // Presenters
    Get.put(SplashPresenter(Get.find()));
    Get.put(LoginPresenter(Get.find(), Get.find()));
  }
}
