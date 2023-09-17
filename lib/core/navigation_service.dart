import 'package:fusion_app_store/app/auth/presentation/login/login_view.dart';
import 'package:fusion_app_store/app/auth/presentation/splash/splash_view.dart';
import 'package:fusion_app_store/app/store/presentation/store/store_view.dart';
import 'package:get/get.dart';

/// A service class that handles navigation within the app using the GetX library.
class NavigationService {
  // Route names for the pages.
  static const splashPage = "/splash";
  static const loginPage = "/login";
  static const storePage = "/store";

  /// A list of [GetPage] objects representing the pages in the app.
  final List<GetPage<dynamic>> pages = [
    GetPage(
      name: splashPage,
      page: () => const SplashView(),
    ),
    GetPage(
      name: loginPage,
      page: () => const LoginView(),
    ),
    GetPage(
      name: storePage,
      page: () => const StoreView(),
    ),
  ];

  /// Navigates to a specified page.
  ///
  /// This method uses the GetX library to navigate to the given [page].
  /// You can also provide optional [arguments] to pass data to the destination page.
  /// If [shouldReplace] is true, the current route will be replaced with the new route.
  ///
  /// Returns a [Future] that completes when the navigation operation is done.
  Future<dynamic>? navigateTo({
    required String page,
    dynamic arguments,
    bool shouldReplace = false,
  }) {
    if (shouldReplace) {
      return Get.offNamed(page, arguments: arguments);
    }
    return Get.toNamed(page, arguments: arguments);
  }
}
