import '../api/auth_api.dart';
import '../model/user.dart';
import 'storage_service.dart';

class AuthService {
  final AuthApi _authApi = AuthApi();
  final StorageService _storageService = StorageService();

  Future<User> login() async {
    try {
      final response = await _authApi.login(email: '', password: '');
      _storageService.writeToken(response.headers.value('X-Auth-Token'));
      final User user = User.fromJson(response.data);
      return user;
    } catch (e) {
      rethrow;
    }
  }
}
