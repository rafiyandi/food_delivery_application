import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      print("Failed With Error: ${e.code}");
      print(e.message);
    }
  }

  Future<void> signUp(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      print("Failed With Error: ${e.code}");
      print(e.message);
    }
  }
}
