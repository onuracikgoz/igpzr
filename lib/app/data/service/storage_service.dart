import 'package:get_storage/get_storage.dart';

class StorageService {
  final box = GetStorage();
  final String _token = 'token';

  String? readToken() {
    return box.read(_token);
  }

  void writeToken(String? token) {
    box.write(_token, token);
  }

  void removeToken() {
    box.remove(_token);
  }
}
