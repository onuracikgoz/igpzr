// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$_shopListAtom = Atom(name: 'HomeStoreBase._shopList');

  @override
  ObservableList<Shop> get _shopList {
    _$_shopListAtom.reportRead();
    return super._shopList;
  }

  @override
  set _shopList(ObservableList<Shop> value) {
    _$_shopListAtom.reportWrite(value, super._shopList, () {
      super._shopList = value;
    });
  }

  final _$jsonListAtom = Atom(name: 'HomeStoreBase.jsonList');

  @override
  ObservableList<dynamic> get jsonList {
    _$jsonListAtom.reportRead();
    return super.jsonList;
  }

  @override
  set jsonList(ObservableList<dynamic> value) {
    _$jsonListAtom.reportWrite(value, super.jsonList, () {
      super.jsonList = value;
    });
  }

  final _$_discoveryListAtom = Atom(name: 'HomeStoreBase._discoveryList');

  @override
  ObservableList<Discovery> get _discoveryList {
    _$_discoveryListAtom.reportRead();
    return super._discoveryList;
  }

  @override
  set _discoveryList(ObservableList<Discovery> value) {
    _$_discoveryListAtom.reportWrite(value, super._discoveryList, () {
      super._discoveryList = value;
    });
  }

  final _$discoveryLoadingAtom = Atom(name: 'HomeStoreBase.discoveryLoading');

  @override
  bool get discoveryLoading {
    _$discoveryLoadingAtom.reportRead();
    return super.discoveryLoading;
  }

  @override
  set discoveryLoading(bool value) {
    _$discoveryLoadingAtom.reportWrite(value, super.discoveryLoading, () {
      super.discoveryLoading = value;
    });
  }

  final _$discoveryScrollAtom = Atom(name: 'HomeStoreBase.discoveryScroll');

  @override
  ScrollController get discoveryScroll {
    _$discoveryScrollAtom.reportRead();
    return super.discoveryScroll;
  }

  @override
  set discoveryScroll(ScrollController value) {
    _$discoveryScrollAtom.reportWrite(value, super.discoveryScroll, () {
      super.discoveryScroll = value;
    });
  }

  final _$getShopsAsyncAction = AsyncAction('HomeStoreBase.getShops');

  @override
  Future<void> getShops() {
    return _$getShopsAsyncAction.run(() => super.getShops());
  }

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

  @override
  dynamic initListenDiscoveryScroll() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.initListenDiscoveryScroll');
    try {
      return super.initListenDiscoveryScroll();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getShopById(dynamic id) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.getShopById');
    try {
      return super.getShopById(id);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
jsonList: ${jsonList},
discoveryLoading: ${discoveryLoading},
discoveryScroll: ${discoveryScroll}
    ''';
  }
}
