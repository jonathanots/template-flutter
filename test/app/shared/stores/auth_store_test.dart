import 'package:flutter_test/flutter_test.dart';
import 'package:template_app/app/shared/stores/auth_store.dart';
 
void main() {
  late AuthStore store;

  setUpAll(() {
    store = AuthStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}