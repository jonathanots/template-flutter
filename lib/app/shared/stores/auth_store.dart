import 'package:mobx/mobx.dart';
import 'package:template_app/app/shared/repositories/auth_respository.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  final AuthRepository authRepository;

  _AuthStoreBase({required this.authRepository});

  @observable
  bool onRequest = false;

  ///Do request login passing [username] and [password]
  @action
  Future<void> doLogin(String? username, String? password) async {
    if (onRequest) return;

    onRequest = true;

    if (username != null && password != null)
      await authRepository.doAuth(username, password);

    onRequest = false;
  }
}
