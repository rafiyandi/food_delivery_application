import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_delivery_aplication/domain/auth/user_model.dart';
import 'package:food_delivery_aplication/infrastruktur/auth/user_repository.dart';

class AuthRepository {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp({
    required String id,
    required String fullname,
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      UserModel user = UserModel(
        id: userCredential.user!.uid,
        fullname: fullname,
        username: username,
        email: email,
        password: password,
      );
//menambahkan ke firestore
      await UserRepository().setUser(user);
      return user;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw Exception(e);
    }
  }
}
