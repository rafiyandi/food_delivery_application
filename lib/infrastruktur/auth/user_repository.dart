import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import '../../domain/auth/user_model.dart';

class UserRepository {
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        'email': user.email,
        'fullname': user.fullname,
        'username': user.username,
        'password': user.password,
      });
    } catch (e) {
      throw Exception(e);
    }
  }
}
