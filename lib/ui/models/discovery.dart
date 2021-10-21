class Discovery {
  String id;
  String shopName;
  String shopImage;
  String? shopImagesSmall;
 String shopImagesLarge;
  

  Discovery(
      {
        required this.id,
       required this.shopName,
     required this.shopImage,
       this.shopImagesSmall,
      required this.shopImagesLarge,
     });
}