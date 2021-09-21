class EdgeFollowedBy {
  int? count;

  EdgeFollowedBy({this.count});

  factory EdgeFollowedBy.fromJson(Map<String, dynamic> json) => EdgeFollowedBy(
        count: json['count'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'count': count,
      };
}
