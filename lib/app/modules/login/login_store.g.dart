// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStoreBase, Store {
  final _$onRequestAtom = Atom(name: '_LoginStoreBase.onRequest');

  @override
  bool get onRequest {
    _$onRequestAtom.reportRead();
    return super.onRequest;
  }

  @override
  set onRequest(bool value) {
    _$onRequestAtom.reportWrite(value, super.onRequest, () {
      super.onRequest = value;
    });
  }

  final _$usernameAtom = Atom(name: '_LoginStoreBase.username');

  @override
  String get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  final _$passwordAtom = Atom(name: '_LoginStoreBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$doLoginAsyncAction = AsyncAction('_LoginStoreBase.doLogin');

  @override
  Future<String?> doLogin({String? uName, String? pWord}) {
    return _$doLoginAsyncAction
        .run(() => super.doLogin(uName: uName, pWord: pWord));
  }

  final _$_LoginStoreBaseActionController =
      ActionController(name: '_LoginStoreBase');

  @override
  dynamic onChangeUserName(String value) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.onChangeUserName');
    try {
      return super.onChangeUserName(value);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onChangePassword(String value) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.onChangePassword');
    try {
      return super.onChangePassword(value);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
onRequest: ${onRequest},
username: ${username},
password: ${password}
    ''';
  }
}
