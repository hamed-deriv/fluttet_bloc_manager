import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_bloc_manager/base_state_listener.dart';
import 'package:flutter_bloc_manager/bloc_managers/base_bloc_manager.dart';

/// Base state emitter class.
abstract class BaseStateEmitter<S extends BaseStateListener,
    B extends BlocBase<Object>> {
  /// Initializes base state emitter.
  BaseStateEmitter(this.blocManager) {
    blocManager.registerStateEmitter(this);
  }

  /// Bloc manager instance.
  final BaseBlocManager blocManager;

  /// Handles states for state listener [S].
  void handleStates({required S stateListener, required Object state});

  /// Emits state to corresponding listener.
  void call({required BaseStateListener stateListener, Object? state}) {
    if (stateListener is S) {
      handleStates(
        stateListener: stateListener,
        state: state ?? blocManager.fetch<B>().state,
      );
    }
  }
}
