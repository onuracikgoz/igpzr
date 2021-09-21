import 'page_info.dart';

class EdgeMediaCollections {
  int? count;
  PageInfo? pageInfo;
  List<dynamic>? edges;

  EdgeMediaCollections({this.count, this.pageInfo, this.edges});

  factory EdgeMediaCollections.fromJson(Map<String, dynamic> json) =>
      EdgeMediaCollections(
        count: json['count'] as int?,
        pageInfo: json['page_info'] == null
            ? null
            : PageInfo.fromJson(json['page_info'] as Map<String, dynamic>),
        edges: json['edges'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'count': count,
        'page_info': pageInfo?.toJson(),
        'edges': edges,
      };
}
