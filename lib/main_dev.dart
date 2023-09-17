import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fusion_app_store/config/theme/app_theme.dart';
import 'package:fusion_app_store/core/injection_container.dart';
import 'package:fusion_app_store/core/navigation_service.dart';
import 'package:fusion_app_store/firebase_options.dart';
import 'package:fusion_app_store/main_common.dart';
import 'package:get/get.dart';

void main() async {
  flavor = Flavor.dev;
  sessionStartTime = DateTime.now();

  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding.instance.addObserver(PageResizeObserver());

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await DependencyInjector.injectDependencies();

  navigationService = Get.find<NavigationService>();

  runApp(const App());
}
