import 'package:get/get.dart';

/// A service class that handles navigation within the app using the GetX library.
class NavigationService {
  // Route names for the pages.
  static const authPage = "/auth";
  static const storePage = "/store";

  /// A list of [GetPage] objects representing the pages in the app.
  static const List<GetPage<dynamic>> pages = [];

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
    return Get.to(page, arguments: arguments);
  }
}
