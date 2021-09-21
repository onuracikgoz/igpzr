import 'edge.dart';

class EdgeRelatedProfiles {
  List<Edge>? edges;

  EdgeRelatedProfiles({this.edges});

  factory EdgeRelatedProfiles.fromJson(Map<String, dynamic> json) =>
      EdgeRelatedProfiles(
        edges: (json['edges'] as List<dynamic>?)
            ?.map((e) => Edge.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'edges': edges?.map((e) => e.toJson()).toList(),
      };
}
