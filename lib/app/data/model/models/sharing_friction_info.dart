class SharingFrictionInfo {
  bool? shouldHaveSharingFriction;
  dynamic bloksAppUrl;

  SharingFrictionInfo({this.shouldHaveSharingFriction, this.bloksAppUrl});

  factory SharingFrictionInfo.fromJson(Map<String, dynamic> json) =>
      SharingFrictionInfo(
        shouldHaveSharingFriction:
            json['should_have_sharing_friction'] as bool?,
        bloksAppUrl: json['bloks_app_url'],
      );

  Map<String, dynamic> toJson() => {
        'should_have_sharing_friction': shouldHaveSharingFriction,
        'bloks_app_url': bloksAppUrl,
      };
}
