import 'edge.dart';
import 'edge_owner_to_timeline_media_page_info.dart';

class EdgeOwnerToTimelineMedia {
  int? count;
  PageInfo? pageInfo;
  List<Edge>? edges;

  EdgeOwnerToTimelineMedia({this.count, this.pageInfo, this.edges});

  factory EdgeOwnerToTimelineMedia.fromJson(Map<String, dynamic> json) =>
      EdgeOwnerToTimelineMedia(
        count: json['count'] as int?,
        pageInfo: json['page_info'] == null
            ? null
            : PageInfo.fromJson(json['page_info'] as Map<String, dynamic>),
        edges: (json['edges'] as List<dynamic>?)
            ?.map((e) => Edge.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'count': count,
        'page_info': pageInfo?.toJson(),
        'edges': edges?.map((e) => e.toJson()).toList(),
      };
}
