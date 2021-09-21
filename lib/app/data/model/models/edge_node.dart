class Node {
  String? id;
  String? fullName;
  bool? isPrivate;
  bool? isVerified;
  String? profilePicUrl;
  String? username;

  Node({
    this.id,
    this.fullName,
    this.isPrivate,
    this.isVerified,
    this.profilePicUrl,
    this.username,
  });

  factory Node.fromJson(Map<String, dynamic> json) => Node(
        id: json['id'] as String?,
        fullName: json['full_name'] as String?,
        isPrivate: json['is_private'] as bool?,
        isVerified: json['is_verified'] as bool?,
        profilePicUrl: json['profile_pic_url'] as String?,
        username: json['username'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'full_name': fullName,
        'is_private': isPrivate,
        'is_verified': isVerified,
        'profile_pic_url': profilePicUrl,
        'username': username,
      };
}
