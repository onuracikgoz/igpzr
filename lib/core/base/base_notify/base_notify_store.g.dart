// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_notify_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NotifyStore on NotifyStoreBase, Store {
  final _$errorMessageAtom = Atom(name: 'NotifyStoreBase.errorMessage');

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  final _$notifyTypeAtom = Atom(name: 'NotifyStoreBase.notifyType');

  @override
  NotifyType? get notifyType {
    _$notifyTypeAtom.reportRead();
    return super.notifyType;
  }

  @override
  set notifyType(NotifyType? value) {
    _$notifyTypeAtom.reportWrite(value, super.notifyType, () {
      super.notifyType = value;
    });
  }

  final _$showNotifyAsyncAction = AsyncAction('NotifyStoreBase.showNotify');

  @override
  Future<void> showNotify(
      {required NotifyType type,
      required String value,
      bool isExpireTimeout = true}) {
    return _$showNotifyAsyncAction.run(() => super.showNotify(
        type: type, value: value, isExpireTimeout: isExpireTimeout));
  }

  final _$NotifyStoreBaseActionController =
      ActionController(name: 'NotifyStoreBase');

  @override
  dynamic getNotifyTypeColor() {
    final _$actionInfo = _$NotifyStoreBaseActionController.startAction(
        name: 'NotifyStoreBase.getNotifyTypeColor');
    try {
      return super.getNotifyTypeColor();
    } finally {
      _$NotifyStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
errorMessage: ${errorMessage},
notifyType: ${notifyType}
    ''';
  }
}
