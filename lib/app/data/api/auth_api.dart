import 'package:dio/dio.dart';

import '../../../config/api/abstract_api.dart';
import '../model/user.dart';

class AuthApi extends AbstractApi {
  AuthApi({
    this.path = 'auth',
    this.tag = 'AuthService',
  }) : super(path, tag, isAuth: true);
  final String path;
  final String tag;

  Future<Response> register({
    required User user,
  }) async {
    try {
      final response = await postCustom(
        innerPath: 'register',
        data: user,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> login({
    required String email,
    required String password,
  }) async {
    try {
      final cancelToken = CancelToken();
      final response = await postCustom(
        // innerPath: '',
        //   queryParameters: {'user_id': HttpManager.user!.id},
        data: {
          'email': email,
          'password': password,
        },
        cancelToken: cancelToken,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> forgotPassword({
    required String email,
  }) async {
    final cancelToken = CancelToken();
    try {
      final response = await get(
        innerPath: 'forgotPassword',
        queryParameters: {'email': email},
        cancelToken: cancelToken,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
