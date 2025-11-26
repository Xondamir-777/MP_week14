abstract class AuthService {
  Future<bool> signIn(String email, String password);
}

class FakeAuthService{
  final AuthService  authService;

  FakeAuthService({required this.authService});

  Future<String> login(String email, String password) async {
    try {
      final success = await authService.signIn(email, password);
      if (success) return 'Login successful';
      return 'Login failed';
    } catch (e) {
      return 'Error: ${e.toString()}';
    }
  }
}

class FakeAuthServiceSuccess implements AuthService {
  @override
  Future<bool> signIn(String email, String password) async {
    return true;
  }
}

class FakeAuthServiceFailure implements AuthService {
  @override
  Future<bool> signIn(String email, String password) async {
    return false;
  }
}

class FakeAuthServiceException implements AuthService {
  @override
  Future<bool> signIn(String email, String password) async {
    throw Exception('Network error');
  }
}
