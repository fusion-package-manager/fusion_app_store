import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:fusion_app_store/app/store/presentation/store/store_presenter.dart';
import 'package:fusion_app_store/app/store/presentation/store/store_state_machine.dart';
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

  void initStore() {}

  StoreState getCurrentState() {
    return _stateMachine.currentState;
  }
}
