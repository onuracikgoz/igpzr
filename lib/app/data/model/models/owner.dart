class Owner {
  String? id;
  String? username;

  Owner({this.id, this.username});

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        id: json['id'] as String?,
        username: json['username'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
      };
}
