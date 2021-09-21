class User {
  String? fullName;
  bool? followedByViewer;
  String? id;
  bool? isVerified;
  String? profilePicUrl;
  String? username;

  User({
    this.fullName,
    this.followedByViewer,
    this.id,
    this.isVerified,
    this.profilePicUrl,
    this.username,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        fullName: json['full_name'] as String?,
        followedByViewer: json['followed_by_viewer'] as bool?,
        id: json['id'] as String?,
        isVerified: json['is_verified'] as bool?,
        profilePicUrl: json['profile_pic_url'] as String?,
        username: json['username'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'full_name': fullName,
        'followed_by_viewer': followedByViewer,
        'id': id,
        'is_verified': isVerified,
        'profile_pic_url': profilePicUrl,
        'username': username,
      };
}
