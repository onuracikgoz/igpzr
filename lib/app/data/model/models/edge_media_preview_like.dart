class EdgeMediaPreviewLike {
  int? count;

  EdgeMediaPreviewLike({this.count});

  factory EdgeMediaPreviewLike.fromJson(Map<String, dynamic> json) =>
      EdgeMediaPreviewLike(
        count: json['count'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'count': count,
      };
}
