import 'package:firebase_auth/firebase_auth.dart';

import '../repositories/history/history_repository.dart';

class HistoryController {

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final HistoryRepository _historyRepository = HistoryRepository();

  Future<void> saveSearch(String place) {
    String currentUserEmail = _firebaseAuth.currentUser!.email!;
    return _historyRepository.saveSearch(place, currentUserEmail);
  }
}