import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import '../../domain/auth/user_model.dart';

class UserRepository {
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

//menampilkan data dinamis
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

  Future<UserModel> getUserById(String id) async {
    try {
      DocumentSnapshot snapshot = await _userReference.doc(id).get();
      return UserModel(
          id: id,
          fullname: snapshot['fullname'],
          username: snapshot['username'],
          email: snapshot['email'],
          password: snapshot['password']);
    } catch (e) {
      throw Exception(e);
    }
  }

  // Future<void> updateUser(
  //     String fullname, String email, String username) async {
  //   try {
  //     return await _userReference.doc().update({
  //       'fullname': fullname,
  //       'email': email,
  //       'username': username,
  //     });
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  // }
}
