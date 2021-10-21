import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:igpzr/init/locator.dart';
import 'package:igpzr/ui/models/discovery.dart';
import 'package:igpzr/ui/modules/home_page/home_store.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:igpzr/ui/reusable_widgets/app_bar/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeStore homeStore;
  @override
  void initState() {
    homeStore = locator<HomeStore>()..getShops();
    homeStore.initListenDiscoveryScroll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Column(
          children: [
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  controller: homeStore.discoveryScroll,
                  shrinkWrap: true,
                  itemCount: homeStore.discoveryList.length,
                  itemBuilder: (context, index) => _DiscoveryItem(
                        discovery: homeStore.discoveryList[index],
                      )),
            )
          ],
        
      );
    });
  }
}

class _DiscoveryItem extends StatelessWidget {
  const _DiscoveryItem({Key? key, required this.discovery}) : super(key: key);

  final Discovery discovery;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Column(
          children: [
             Row(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           CachedNetworkImage(
  imageUrl:discovery.shopImage,
  imageBuilder: (context, imageProvider) => Container(
    width: 50.0.w,
    height: 50.0.w,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black,width: 2),
      shape: BoxShape.circle,
      image: DecorationImage(
            image: imageProvider, fit: BoxFit.cover),
    ),
  ),
  placeholder: (context, url) => CircularProgressIndicator(),
  errorWidget: (context, url, error) => Icon(Icons.error),
),
Text(discovery.shopName)

         ],
       ),
            Container(
              decoration: BoxDecoration(  borderRadius: BorderRadius.circular(15),),
              child: ClipRRect(
                 borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(imageUrl: discovery.shopImagesLarge))),
      
          ],
        ),
      ),
    );
  }
}
