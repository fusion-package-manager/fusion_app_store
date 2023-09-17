import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:fusion_app_store/app/store/presentation/store/store_presenter.dart';
import 'package:fusion_app_store/app/store/presentation/store/store_state_machine.dart';
import 'package:fusion_app_store/constants/enumerations.dart';
import 'package:fusion_app_store/core/observer.dart';
import 'package:get/get.dart';

class StoreController extends Controller {
  final StoreStateMachine _stateMachine;
  final StorePresenter _presenter;

  StoreController()
      : _presenter = Get.find<StorePresenter>(),
        _stateMachine = StoreStateMachine();

  @override
  void initListeners() {}

  @override
  void onDisposed() {
    _presenter.dispose();
    super.onDisposed();
  }

  void initStore() {
    Map<SyncCompletionTypes, bool> syncCompletionData = {
      SyncCompletionTypes.userSyncComplete: false,
      SyncCompletionTypes.appSyncComplete: false,
    };
    _presenter.syncStore(
      observer: UseCaseObserver(
        name: 'initStore',
        onNext: () {
          // trigger store initialized event
        },
      ),
      onSyncCompletionTriggered: (type) {
        syncCompletionData[type] = true;
        _stateMachine.onEvent(
          StoreInitializationEvent(syncCompletionData: syncCompletionData),
        );
        refreshUI();
      },
    );
  }

  StoreState getCurrentState() {
    return _stateMachine.currentState;
  }
}
