

class Shops {
  static List<FirstShopInfo> shopUrlList = [
    FirstShopInfo(
        instagramName: "morkavintage",
        category: ["sweatshirt", "t-shirt"],
        gender: "unisex"),
    FirstShopInfo(
        instagramName: "narferita",
        category: ["sweatshirt", "kazak", "ceket", "jeans"],
        gender: "kadın"),
  
    FirstShopInfo(
        instagramName: "mylovebutik",
        category: ["sweatshirt", "t-shirt"],
        gender: "unisex"),
   
 
  ];
}

class FirstShopInfo {
  String  instagramName;
  List<String> category;
  String gender;

  FirstShopInfo({required this.instagramName, required this.category, required this.gender});
}