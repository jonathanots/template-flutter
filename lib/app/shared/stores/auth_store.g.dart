// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStore on _AuthStoreBase, Store {
  final _$onRequestAtom = Atom(name: '_AuthStoreBase.onRequest');

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

  final _$doLoginAsyncAction = AsyncAction('_AuthStoreBase.doLogin');

  @override
  Future<void> doLogin(String? username, String? password) {
    return _$doLoginAsyncAction.run(() => super.doLogin(username, password));
  }

  @override
  String toString() {
    return '''
onRequest: ${onRequest}
    ''';
  }
}
