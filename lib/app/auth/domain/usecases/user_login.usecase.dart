import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:fusion_app_store/app/auth/domain/repository/auth_repository.dart';

class UserLoginUseCase extends CompletableUseCase<void> {
  final AuthRepository _repository;

  UserLoginUseCase(this._repository);

  @override
  Future<Stream<void>> buildUseCaseStream(params) async {
    final StreamController<bool> streamController = StreamController();
    bool loginSuccess = await _repository.logIn();
    streamController.add(loginSuccess);
    streamController.close();
    return streamController.stream;
  }
}
