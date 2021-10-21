// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$InitStore on InitStoreBase, Store {
  final _$currentIndexAtom = Atom(name: 'InitStoreBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  final _$InitStoreBaseActionController =
      ActionController(name: 'InitStoreBase');

  @override
  dynamic changeCurrentIndex(int index) {
    final _$actionInfo = _$InitStoreBaseActionController.startAction(
        name: 'InitStoreBase.changeCurrentIndex');
    try {
      return super.changeCurrentIndex(index);
    } finally {
      _$InitStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex}
    ''';
  }
}
