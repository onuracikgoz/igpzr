

import 'package:flutter/material.dart';
import 'package:igpzr/core/constants/shops.dart';
import 'package:igpzr/core/services/http_service.dart';
import 'package:igpzr/init/locator.dart';
import 'package:igpzr/ui/models/discovery.dart';
import 'package:igpzr/ui/models/shop.dart';
import 'package:mobx/mobx.dart';



part 'home_store.g.dart';

class HomeStore = HomeStoreBase
    with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  ObservableList<Shop> _shopList = new ObservableList();
  @observable
  ObservableList<dynamic> jsonList = ObservableList();
  @observable
  ObservableList<Discovery> _discoveryList = new ObservableList();
  @observable
  bool discoveryLoading = false;

  @observable
  ScrollController discoveryScroll = ScrollController();

  @action
  initListenDiscoveryScroll(){
    discoveryScroll.addListener(()async {
        if(!discoveryLoading && discoveryScroll.offset +1000  >=  discoveryScroll.position.maxScrollExtent){

            await  getShops();

        } 

     });

  }
  


 
  Shop get shop => _shop;

   
  ObservableList<Shop> get shopList => _shopList;



 
  ObservableList<Discovery> get discoveryList => _discoveryList;


late Shop _shop;



  String? imageProfil;
  int? follower;
  String? name;
  String? biography;
  var jsonResponse;
  var shopImages;
  String? id;
   List<String> _imageList =[];
  List<String> _imageListSmall =[];
 


 final _dio = locator<HttpService>(); 

  @action
  Future<void> getShops() async {

    discoveryLoading = true;

    List<Discovery> tempDiscoveryList = [];

      int shopUrlListLength = Shops.shopUrlList.length;
       



      if(shopUrlListLength > shopList.length) {
    for (var item in Shops.shopUrlList.skip(shopList.length).take(1)) {

        _imageList.clear();
      _imageListSmall.clear();
      print(item.instagramName);

      

      var response = await _dio.httpGet(instagramName:item.instagramName
       
      );


    //  print(response.data.toString());

      if (response.statusCode == 200) {
      
        jsonResponse = response.data;
        id = jsonResponse['graphql']['user']['id'];
        imageProfil = jsonResponse['graphql']['user']['profile_pic_url_hd'];
        follower = jsonResponse['graphql']['user']['edge_followed_by']['count'];
        name = jsonResponse['graphql']['user']['username'];
        biography = jsonResponse['graphql']['user']['biography'];
        shopImages = jsonResponse['graphql']['user']
            ['edge_owner_to_timeline_media']['edges'] as List;

        shopImages.forEach((element) {
          _imageList.add(element['node']['display_url']);
         _imageListSmall.add(element['node']['thumbnail_resources'][2]['src']);


       //  print(element['node']['thumbnail_resources'][2]['src']);
          tempDiscoveryList.add(Discovery(
              id: id!,
              shopImage: imageProfil!,
              shopName: name!,
              shopImagesLarge: element['node']['display_url'],
              shopImagesSmall: element['node']['thumbnail_resources'][1]['src']));
       
        });

        _shopList.add(Shop(
            id: id!,
            shopName: name!,
            follower: follower!,
            shopBiography: biography!,
            shopFollower: follower.toString(),
            shopImage: imageProfil!,
            shopImagesLarge: _imageList,
            shopImagesSmall: _imageListSmall));
      }
              //  print("id");
              //  print(id);

   //   print(imageList.length.toString());
      // print("imageListSmall.length.toString()");
      // print(_imageListSmall.length.toString());

        tempDiscoveryList.shuffle();


    } }

    _discoveryList.addAll(tempDiscoveryList);

      discoveryLoading = false;
      
   



  }


@action
getShopById (id){


  _shop =
      _shopList.firstWhere((element) => element.id == id);

}


}