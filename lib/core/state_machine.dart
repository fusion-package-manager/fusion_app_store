import 'package:flutter/cupertino.dart';

/// A generic abstract class representing a state machine that manages states and events.
abstract class StateMachine<State, Event> {
  /// The current state of the state machine.
  late State _state;

  /// Constructor that initializes the state machine with an initial state.
  StateMachine(State initialState) {
    _state = initialState;
  }

  /// Subclasses must implement this method to determine the new state based on the given event.
  @protected
  State getStateOnEvent(Event event);

  /// Triggers a state transition based on the provided event.
  void onEvent(Event event) {
    _state = getStateOnEvent(event);
  }

  /// Returns the current state of the state machine.
  State get currentState => _state;
}
