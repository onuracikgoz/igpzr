// To parse this JSON data, do
//
//     final reqSignIn = reqSignInFromJson(jsonString);

class ValidationError {
  ValidationError({
    required this.key,
    required this.value,
  });

  String key;
  String value;

  factory ValidationError.fromJson(Map<String, dynamic> json) =>
      ValidationError(
        key: json["Key"],
        value: json["Value"],
      );

  Map<String, dynamic> toJson() => {
        "Key": key,
        "Value": value,
      };
}
