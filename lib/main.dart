import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fusion_app_store/app/auth/presentation/splash/splash_view.dart';
import 'package:fusion_app_store/config/theme/app_theme.dart';
import 'package:fusion_app_store/core/injection_container.dart';
import 'package:fusion_app_store/core/navigation_service.dart';
import 'package:fusion_app_store/firebase_options.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

late NavigationService navigationService;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding.instance.addObserver(AppBindingsObserver());

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await DependencyInjector.injectDependencies();

  navigationService = Get.find<NavigationService>();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: "Sen",
        useMaterial3: true,
        primaryColor: Colors.white,
      ),
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: [
              const Breakpoint(start: 0, end: 450, name: MOBILE),
              const Breakpoint(start: 451, end: 800, name: TABLET),
              const Breakpoint(start: 801, end: 1200, name: DESKTOP),
              const Breakpoint(start: 1201, end: 1920, name: '2K'),
              const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
            ],
          ),
        );
      },
      title: "Fusion App Store",
      getPages: Get.find<NavigationService>().pages,
      initialRoute: NavigationService.splashPage,
      defaultTransition: Transition.fadeIn,
      unknownRoute: GetPage(
        name: NavigationService.splashPage,
        page: () => const SplashView(),
      ),
    );
  }
}
