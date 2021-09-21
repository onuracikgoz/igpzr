// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStore on _AuthStoreBase, Store {
  final _$authStateAtom = Atom(name: '_AuthStoreBase.authState');

  @override
  AuthState get authState {
    _$authStateAtom.reportRead();
    return super.authState;
  }

  @override
  set authState(AuthState value) {
    _$authStateAtom.reportWrite(value, super.authState, () {
      super.authState = value;
    });
  }

  final _$nameAtom = Atom(name: '_AuthStoreBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$emailAtom = Atom(name: '_AuthStoreBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_AuthStoreBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$isEmailVAlidAtom = Atom(name: '_AuthStoreBase.isEmailVAlid');

  @override
  String? get isEmailVAlid {
    _$isEmailVAlidAtom.reportRead();
    return super.isEmailVAlid;
  }

  @override
  set isEmailVAlid(String? value) {
    _$isEmailVAlidAtom.reportWrite(value, super.isEmailVAlid, () {
      super.isEmailVAlid = value;
    });
  }

  final _$isPsswordValidAtom = Atom(name: '_AuthStoreBase.isPsswordValid');

  @override
  String? get isPsswordValid {
    _$isPsswordValidAtom.reportRead();
    return super.isPsswordValid;
  }

  @override
  set isPsswordValid(String? value) {
    _$isPsswordValidAtom.reportWrite(value, super.isPsswordValid, () {
      super.isPsswordValid = value;
    });
  }

  final _$isPassObsecureAtom = Atom(name: '_AuthStoreBase.isPassObsecure');

  @override
  bool get isPassObsecure {
    _$isPassObsecureAtom.reportRead();
    return super.isPassObsecure;
  }

  @override
  set isPassObsecure(bool value) {
    _$isPassObsecureAtom.reportWrite(value, super.isPassObsecure, () {
      super.isPassObsecure = value;
    });
  }

  final _$appStartedAsyncAction = AsyncAction('_AuthStoreBase.appStarted');

  @override
  Future<dynamic> appStarted() {
    return _$appStartedAsyncAction.run(() => super.appStarted());
  }

  final _$_AuthStoreBaseActionController =
      ActionController(name: '_AuthStoreBase');

  @override
  void setUsername(String value) {
    final _$actionInfo = _$_AuthStoreBaseActionController.startAction(
        name: '_AuthStoreBase.setUsername');
    try {
      return super.setUsername(value);
    } finally {
      _$_AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_AuthStoreBaseActionController.startAction(
        name: '_AuthStoreBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_AuthStoreBaseActionController.startAction(
        name: '_AuthStoreBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic togglePassword() {
    final _$actionInfo = _$_AuthStoreBaseActionController.startAction(
        name: '_AuthStoreBase.togglePassword');
    try {
      return super.togglePassword();
    } finally {
      _$_AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
authState: ${authState},
name: ${name},
email: ${email},
password: ${password},
isEmailVAlid: ${isEmailVAlid},
isPsswordValid: ${isPsswordValid},
isPassObsecure: ${isPassObsecure}
    ''';
  }
}
