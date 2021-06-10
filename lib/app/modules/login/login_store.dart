import 'package:mobx/mobx.dart';
import 'package:template_app/app/shared/repositories/auth_respository.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  final AuthRepository authRepository;

  _LoginStoreBase({required this.authRepository});

  ///You can use this variable to handle a loading icon at doing login.
  @observable
  bool onRequest = false;

  //I recommend that you create more 2 observables to uName and pWord
  //because this way you can create 2 actions to onChange on textfield
  //and don't need to pass arguments when call doLogin. This way you can do
  //a validate form on your page.

  @observable
  String username = '';

  @action
  onChangeUserName(String value) => username = value;

  @observable
  String password = '';

  @action
  onChangePassword(String value) => password = value;

  ///Do request login passing [username] and [password]
  @action
  Future<String?> doLogin({String? uName, String? pWord}) async {
    if (onRequest) return null;

    onRequest = true;

    final String? token = await authRepository.doAuth(
        uName ?? this.username, pWord ?? this.password);

    onRequest = false;

    return token;
  }

  //TODO: After the user is logged you can use localstorage service to store
  //any data.
}
