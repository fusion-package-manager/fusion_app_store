import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:fusion_app_store/app/auth/domain/repository/auth_repository.dart';

class UserLoginStateUseCase extends CompletableUseCase<void> {
  final AuthRepository _repository;

  UserLoginStateUseCase(this._repository);

  @override
  Future<Stream<bool>> buildUseCaseStream(params) async {
    final StreamController<bool> streamController = StreamController();
    bool isLoggedIn = await _repository.isUserLoggedIn();
    streamController.add(isLoggedIn);
    streamController.close();
    return streamController.stream;
  }
}
