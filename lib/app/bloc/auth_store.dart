import 'package:mobx/mobx.dart';

import '../../util/validator_util.dart';
import '../data/service/storage_service.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;
enum AuthState { pending, unauthanticate, authanticate }

abstract class _AuthStoreBase with Store {
  final StorageService _storageService = StorageService();

  ///
  /// DATA STORE
  ///
  @observable
  AuthState authState = AuthState.pending;
  @action
  Future appStarted() async {
    _storageService.writeToken('very secure token');
    //Check localStorage
    // if hasToken navigate to home page
    // else navigate to onboardingPage
    authState = AuthState.pending;
    await Future.delayed(const Duration(seconds: 5));
    final bool hastoken = _storageService.readToken() != null;
    authState = hastoken ? AuthState.authanticate : AuthState.unauthanticate;
  }

  @observable
  String name = '';

  @observable
  String email = '';

  @observable
  String password = '';

  // @computed
  // String? get isEmailValid => ValidatorUtil.email(email);
  // @computed
  // String? get isPasswordValid => ValidatorUtil.digits(password);
  @action
  void setUsername(String value) {
    name = value;
  }

  @action
  void setEmail(String value) {
    isEmailVAlid = ValidatorUtil.email(value);
    email = value;
  }

  @action
  void setPassword(String value) {
    isPsswordValid = ValidatorUtil.digits(value);
    password = value;
  }

  ///
  /// UI STORE
  ///

  @observable
  String? isEmailVAlid;
  @observable
  String? isPsswordValid;
  @observable
  bool isPassObsecure = true;

  @action
  void togglePassword() {
    isPassObsecure = !isPassObsecure;
  }
}
