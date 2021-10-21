import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';

class Shop {
  String id;
  String shopName;
  String shopImage;
  String shopFollower;
  String shopBiography;
  int follower;
  List<String> shopImagesSmall;
  List<String> shopImagesLarge;
  

  Shop(
      {
       required this.id,
       required  this.shopName,
     required this.shopImage,
     required this.shopFollower,
     required this.shopBiography,
     required  this.shopImagesSmall,
      required this.shopImagesLarge,
      required this.follower});
}

class FirstShopInfo {
  String url;
  List<String> category;
  String gender;

  FirstShopInfo({required this.url,required this.category,required this.gender});
}