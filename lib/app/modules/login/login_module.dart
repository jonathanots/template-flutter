import 'package:dio/dio.dart';
import 'package:template_app/app/modules/login/login_page.dart';
import 'package:template_app/app/modules/login/login_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:template_app/app/shared/repositories/auth_respository.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton(
        (i) => LoginStore(authRepository: i.get<AuthRepository>())),
    Bind.lazySingleton((i) => AuthRepository(dio: i.get<Dio>()))
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => LoginPage())
  ];
}
