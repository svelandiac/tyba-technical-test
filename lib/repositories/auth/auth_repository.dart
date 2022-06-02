import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tyba_technical_test/repositories/auth/iauth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tyba_technical_test/repositories/history/history_repository.dart';

class AuthRepository implements IAuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<void> login(String username, String password) async {
   try {
     await  _firebaseAuth.signInWithEmailAndPassword(
         email: username, password: password);
   } catch (e) {
     print(e);
   }
   return;
  }

  @override
  Future<void> register(String username, String password) async {
    try {
      await  _firebaseAuth.createUserWithEmailAndPassword(
          email: username, password: password);
    } catch (e) {
      print(e);
    }
    return;
  }

  @override
  Future<void> logout() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      print(e);
    }
  }
}
