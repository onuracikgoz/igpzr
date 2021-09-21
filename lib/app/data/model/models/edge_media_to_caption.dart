import 'edge.dart';

class EdgeMediaToCaption {
  List<Edge>? edges;

  EdgeMediaToCaption({this.edges});

  factory EdgeMediaToCaption.fromJson(Map<String, dynamic> json) =>
      EdgeMediaToCaption(
        edges: (json['edges'] as List<dynamic>?)
            ?.map((e) => Edge.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'edges': edges?.map((e) => e.toJson()).toList(),
      };
}
