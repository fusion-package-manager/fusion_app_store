import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:fusion_app_store/app/store/domain/repository/store_repository.dart';
import 'package:fusion_app_store/constants/enumerations.dart';

class SyncStoreUseCase extends CompletableUseCase<SyncStoreUseCaseParam> {
  final StoreRepository _repository;

  SyncStoreUseCase(this._repository);

  @override
  Future<Stream<void>> buildUseCaseStream(params) async {
    StreamController<void> controller = StreamController();
    var onSyncCompletionTriggered = params!.onSyncCompletionTriggered;
    await _repository.syncUsers();
    onSyncCompletionTriggered.call(SyncCompletionTypes.userSyncComplete);
    await _repository.syncApps();
    onSyncCompletionTriggered.call(SyncCompletionTypes.appSyncComplete);
    controller.close();
    return controller.stream;
  }
}

class SyncStoreUseCaseParam {
  final void Function(SyncCompletionTypes) onSyncCompletionTriggered;

  SyncStoreUseCaseParam({required this.onSyncCompletionTriggered});
}
