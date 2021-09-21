class EdgeMutualFollowedBy {
  int? count;
  List<dynamic>? edges;

  EdgeMutualFollowedBy({this.count, this.edges});

  factory EdgeMutualFollowedBy.fromJson(Map<String, dynamic> json) =>
      EdgeMutualFollowedBy(
        count: json['count'] as int?,
        edges: json['edges'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'count': count,
        'edges': edges,
      };
}
