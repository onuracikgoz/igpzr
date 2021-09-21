class EdgeMediaToComment {
  int? count;

  EdgeMediaToComment({this.count});

  factory EdgeMediaToComment.fromJson(Map<String, dynamic> json) =>
      EdgeMediaToComment(
        count: json['count'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'count': count,
      };
}
