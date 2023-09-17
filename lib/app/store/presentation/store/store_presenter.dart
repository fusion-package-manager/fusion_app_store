import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:fusion_app_store/app/store/domain/usecases/sync_store_usecase.dart';
import 'package:fusion_app_store/constants/enumerations.dart';
import 'package:fusion_app_store/core/observer.dart';

class StorePresenter extends Presenter {
  final SyncStoreUseCase _syncStoreUseCase;

  StorePresenter(this._syncStoreUseCase);

  @override
  void dispose() {
    _syncStoreUseCase.dispose();
  }

  void syncStore({
    required UseCaseObserver observer,
    required void Function(SyncCompletionTypes type) onSyncCompletionTriggered,
  }) {
    _syncStoreUseCase.execute(
      observer,
      SyncStoreUseCaseParam(
        onSyncCompletionTriggered: onSyncCompletionTriggered,
      ),
    );
  }
}
