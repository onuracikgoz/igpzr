
import 'package:flutter/material.dart';
import 'package:igpzr/core/base/base_store.dart';
import 'package:igpzr/core/enums/alert_type_enum.dart';
import 'package:mobx/mobx.dart';
part 'base_notify_store.g.dart';

class NotifyStore = NotifyStoreBase with _$NotifyStore;

abstract class NotifyStoreBase with BaseStore, Store {
  @observable
  String? errorMessage;

  @observable
  NotifyType? notifyType;

  @action
  Future<void> showNotify({
    required NotifyType type,
    required String value,
    bool isExpireTimeout = true,
  }) async {
    errorMessage = value;
    notifyType = type;
    if (isExpireTimeout) {
      await Future.delayed(const Duration(seconds: 4));
      errorMessage = null;
    }
  }

  @action
  getNotifyTypeColor() {
    switch (notifyType) {
      case NotifyType.error:
        return Color(0xffef4765);
      case NotifyType.warning:
        return Color(0xfff2c879);
      case NotifyType.success:
        return Color(0xff509950);
      case NotifyType.info:
        return Colors.blueAccent;
      default:
        return Colors.grey;
    }
  }
}
