class Dimensions {
  int? height;
  int? width;

  Dimensions({this.height, this.width});

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        height: json['height'] as int?,
        width: json['width'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'height': height,
        'width': width,
      };
}
