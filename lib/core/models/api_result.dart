// import 'dart:convert';



// ApiResult apiResultFromJson(String str) => ApiResult.fromJson(json.decode(str));

// String apiResultToJson(ApiResult data) => json.encode(data.toJson());

// class ApiResult<T> {
//   ApiResult({
//     required this.validationErrors,
//     required this.hasError,
//     required this.message,
//     required this.data,
//   });

//   List<ValidationError> validationErrors;
//   bool hasError;
//   dynamic message;
//   T data;

//   factory ApiResult.fromJson(Map<String, dynamic> json) {
//     return ApiResult(
//       validationErrors: (json["ValidationErrors"] as List)
//           .map((e) => ValidationError.fromJson(e))
//           .toList(),
//       hasError: json["HasError"],
//       message: json["Message"],
//       data: (json["Data"] as dynamic),
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "ValidationErrors": List<dynamic>.from(validationErrors.map((x) => x)),
//         "HasError": hasError,
//         "Message": message,
//         "Data": data,
//       };
// }
