

import 'package:flutter/material.dart';
import 'package:igpzr/core/constants/shops.dart';
import 'package:igpzr/core/services/http_service.dart';
import 'package:igpzr/init/locator.dart';
import 'package:igpzr/ui/models/discovery.dart';
import 'package:igpzr/ui/models/shop.dart';
import 'package:mobx/mobx.dart';



part 'init_store.g.dart';

class InitStore = InitStoreBase
    with _$InitStore;

abstract class InitStoreBase with Store {

  @observable 
  int currentIndex = 0;

  @action
  changeCurrentIndex(int index){
      currentIndex =index;

  }

}