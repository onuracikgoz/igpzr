class PageInfo {
  bool? hasNextPage;
  dynamic endCursor;

  PageInfo({this.hasNextPage, this.endCursor});

  factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
        hasNextPage: json['has_next_page'] as bool?,
        endCursor: json['end_cursor'],
      );

  Map<String, dynamic> toJson() => {
        'has_next_page': hasNextPage,
        'end_cursor': endCursor,
      };
}
