class EdgeLikedBy {
  int? count;

  EdgeLikedBy({this.count});

  factory EdgeLikedBy.fromJson(Map<String, dynamic> json) => EdgeLikedBy(
        count: json['count'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'count': count,
      };
}
