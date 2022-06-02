import 'package:tyba_technical_test/repositories/auth/iauth_repository.dart';

import '../repositories/history/history_repository.dart';

class AuthController {

  final IAuthRepository auth;
  final HistoryRepository _historyRepository = HistoryRepository();


  AuthController({required this.auth});

  Future<void> login(String username, String password) {
    return auth.login(username, password);
  }

  Future<void> logout() {
    return auth.logout();
  }

  Future<void> register(String username, String password) async {
    await auth.register(username, password);
    await _historyRepository.createSavingRecord(username);
  }

}