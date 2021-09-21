import 'page_info.dart';

class EdgeSavedMedia {
  int? count;
  PageInfo? pageInfo;
  List<dynamic>? edges;

  EdgeSavedMedia({this.count, this.pageInfo, this.edges});

  factory EdgeSavedMedia.fromJson(Map<String, dynamic> json) => EdgeSavedMedia(
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
