import 'package:dio/dio.dart';
import 'package:template_app/app/shared/config/config.dart';
import 'package:template_app/app/shared/repositories/auth_respository.dart';
import 'package:template_app/app/shared/services/LocalStorage/local_storage.dart';
import 'package:template_app/app/shared/stores/auth_store.dart';
import 'package:template_app/app/shared/utils/constants.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';
import 'modules/login/login_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    //Uncomment this code if you go use auth store inside login store
    //calling trough DI
    // Bind.lazySingleton((i) => AuthStore(authRepository: i.get<AuthRepository>())),
    // Bind.lazySingleton((i) => AuthRepository(dio: i.get<Dio>())),
    // Bind.lazySingleton((i) => Dio(BaseOptions(baseUrl: Config.baseUrl))),
    Bind.lazySingleton((i) => Dio(BaseOptions(baseUrl: baseUrl))),
    Bind.lazySingleton((i) => LocalStorageService()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: LoginModule()),
    ModuleRoute("/home", module: HomeModule()),
  ];
}
