import 'package:mobx/mobx.dart';

enum BaseState { initial, busy, error, done }

mixin BaseStore {
  @observable
  BaseState _state = BaseState.initial;

  String message = "";

  BaseState get state => _state;

  set state(BaseState value) {
    _state = value;
  }
}
