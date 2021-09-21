import 'page_info.dart';

class EdgeFelixVideoTimeline {
  int? count;
  PageInfo? pageInfo;
  List<dynamic>? edges;

  EdgeFelixVideoTimeline({this.count, this.pageInfo, this.edges});

  factory EdgeFelixVideoTimeline.fromJson(Map<String, dynamic> json) =>
      EdgeFelixVideoTimeline(
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
