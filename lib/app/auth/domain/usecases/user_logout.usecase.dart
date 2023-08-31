import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:fusion_app_store/app/auth/domain/repository/auth_repository.dart';

class UserLogOutUseCase extends CompletableUseCase<void> {
  final AuthRepository _repository;

  UserLogOutUseCase(this._repository);

  @override
  Future<Stream<void>> buildUseCaseStream(params) async {
    final StreamController<bool> streamController = StreamController();
    bool logoutSuccess = await _repository.logOut();
    streamController.add(logoutSuccess);
    streamController.close();
    return streamController.stream;
  }
}
