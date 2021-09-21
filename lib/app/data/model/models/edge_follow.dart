class EdgeFollow {
  int? count;

  EdgeFollow({this.count});

  factory EdgeFollow.fromJson(Map<String, dynamic> json) => EdgeFollow(
        count: json['count'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'count': count,
      };
}
