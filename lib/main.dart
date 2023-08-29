import 'package:firebase_core/firebase_core.dart';
import 'package:fusion_app_store/firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
