import 'node_user.dart';

class Node {
  User? user;
  double? x;
  double? y;

  Node({this.user, this.x, this.y});

  factory Node.fromJson(Map<String, dynamic> json) => Node(
        user: json['user'] == null
            ? null
            : User.fromJson(json['user'] as Map<String, dynamic>),
        x: json['x'] as double?,
        y: json['y'] as double?,
      );

  Map<String, dynamic> toJson() => {
        'user': user?.toJson(),
        'x': x,
        'y': y,
      };
}
