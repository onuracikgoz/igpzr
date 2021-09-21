class ThumbnailResource {
  String? src;
  int? configWidth;
  int? configHeight;

  ThumbnailResource({this.src, this.configWidth, this.configHeight});

  factory ThumbnailResource.fromJson(Map<String, dynamic> json) =>
      ThumbnailResource(
        src: json['src'] as String?,
        configWidth: json['config_width'] as int?,
        configHeight: json['config_height'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'src': src,
        'config_width': configWidth,
        'config_height': configHeight,
      };
}
