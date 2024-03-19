import 'package:flutter_bloc/flutter_bloc.dart';

import '../main.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(final BlocBase bloc) {
    log.i('СОЗДАН ${bloc.runtimeType}');
    super.onCreate(bloc);
  }

  @override
  void onClose(final BlocBase bloc) {
    log.i('ЗАКРЫТ ${bloc.runtimeType}');
    super.onClose(bloc);
  }

  @override
  void onEvent(final Bloc bloc, final Object? event) {
    log.i('СОБЫТИЕ: ${bloc.runtimeType} принял $event ');
    super.onEvent(bloc, event);
  }

  @override
  void onChange(final BlocBase bloc, final Change change) {
    log.i(
      'ПЕРЕХОД: $bloc\nТЕКУЩЕЕ: ${change.currentState} \nСЛЕДУЮЩЕЕ:${change.nextState}',
    );
    super.onChange(bloc, change);
  }

  @override
  void onError(
    final BlocBase bloc,
    final Object error,
    final StackTrace stackTrace,
  ) {
    log.e(
      'ОШИБКА: ${bloc.runtimeType} пережил ошибку $error\nСТЭК-ТРЭЙС: $stackTrace',
    );
    super.onError(bloc, error, stackTrace);
  }
}
