abstract class IAuthRepository {
  Future<void> login(String username, String password);
  Future<void> register(String username, String password);
  Future<void> logout();
}