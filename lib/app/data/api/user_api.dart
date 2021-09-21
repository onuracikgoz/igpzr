import 'package:dio/dio.dart';

import '../../../config/api/abstract_api.dart';

class UserService extends AbstractApi {
  UserService({
    this.path = 'user',
    this.tag = 'UserService',
  }) : super(path, tag);

  final String path;
  final String tag;

  Future<Response> getUser() async {
    try {
      final response = await get();

      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    try {
      final response = await postCustom(
        innerPath: 'changePassword',
        data: {
          'oldPassword': oldPassword,
          'newPassword': newPassword,
        },
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Future<Response> logout() async {
  //   try {
  //     final response = await get(
  //       innerPath: 'logout',
  //     );
  //     return response;
  //   } catch (e) {
  //     throw e;
  //   }
  // }
}
