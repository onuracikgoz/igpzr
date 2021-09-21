import 'edge.dart';

class EdgeMediaToTaggedUser {
  List<Edge>? edges;

  EdgeMediaToTaggedUser({this.edges});

  factory EdgeMediaToTaggedUser.fromJson(Map<String, dynamic> json) =>
      EdgeMediaToTaggedUser(
        edges: (json['edges'] as List<dynamic>?)
            ?.map((e) => Edge.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'edges': edges?.map((e) => e.toJson()).toList(),
      };
}
