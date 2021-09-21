import 'user.dart';

class Graphql {
  User? user;

  Graphql({this.user});

  factory Graphql.fromJson(Map<String, dynamic> json) => Graphql(
        user: json['user'] == null
            ? null
            : User.fromJson(json['user'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'user': user?.toJson(),
      };
}
