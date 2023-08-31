import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

/// UseCaseObserver<ReturnType>
///
/// Watches the execution of a [CompletableUseCase].
class UseCaseObserver<ReturnType> extends Observer<ReturnType> {
  /// Stores the name of the Observer
  ///
  /// Useful in logging.
  late final String name;

  /// Called when the [UseCase] completes execution with no errors.
  late final VoidCallback _onComplete;

  /// Called when an error is encountered.
  late final Function(dynamic) _onError;

  /// Called only if the [UseCase] has a non void return type.
  late final Function(dynamic) _onNext;

  /// Assertion to make sure that a null safe value is emitted by the [UseCase].
  ///
  /// Calls [onError] when assertion fails.
  final bool assertNotNullResponse;

  /// By Default.
  ///
  /// [onError] throws the error.
  /// [onNext] function's result is neglected.
  UseCaseObserver({
    required this.name,
    required VoidCallback onComplete,
    Function(dynamic)? onError,
    Function(dynamic)? onNext,
    this.assertNotNullResponse = false,
  })  : _onComplete = onComplete,
        _onError = onError ?? ((e) => throw e),
        _onNext = onNext ??
            ((_) => debugPrint(
                "</ [UseCase(RESPONSE)] Neglected Response from $name: $_ >"));

  @override
  void onComplete() {
    _onComplete.call();
  }

  @override
  void onError(e) {
    debugPrint("!!! [UseCase(ERROR)] $name encountered an error: ");
    _onError.call(e);
  }

  @override
  void onNext(response) {
    if (assertNotNullResponse) {
      assert(response != null,
          onError(Exception("----> UseCase[ASSERTION_FAILED]")));
      return;
    }
    _onNext.call(response);
  }
}
