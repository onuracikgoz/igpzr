// To parse this JSON data, do
//
//     final resUploadImage = resUploadImageFromJson(jsonString);

import 'dart:convert';

ResUploadImage resUploadImageFromJson(String str) =>
    ResUploadImage.fromJson(json.decode(str));

String resUploadImageToJson(ResUploadImage data) => json.encode(data.toJson());

class ResUploadImage {
  ResUploadImage({
    required this.url,
  });

  String url;

  factory ResUploadImage.fromJson(Map<String, dynamic> json) => ResUploadImage(
        url: json["Url"],
      );

  Map<String, dynamic> toJson() => {
        "Url": url,
      };
}
