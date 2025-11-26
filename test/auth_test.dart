import 'package:flutter_test/flutter_test.dart';
import 'package:lab14/Fake_auth.dart';

void main() {
  test('login succeeds using fake', () async {
    final authLogic = FakeAuthService(authService: FakeAuthServiceSuccess());

    final result = await authLogic.login('test@example.com', 'password');

    expect(result, 'Login successful');
  });

  test('login fails using fake', () async {
    final authLogic = FakeAuthService(authService: FakeAuthServiceFailure());

    final result = await authLogic.login('wrong@example.com', '1234');

    expect(result, 'Login failed');
  });

  test('login throws exception using fake', () async {
    final authLogic = FakeAuthService(authService: FakeAuthServiceException());

    final result = await authLogic.login('user@example.com', 'pass');

    expect(result, contains('Error: Exception: Network error'));
  });
}
