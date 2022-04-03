import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String fullname;
  final String username;
  final String email;
  final String password;

  UserModel({
    required this.id,
    required this.fullname,
    required this.username,
    required this.email,
    required this.password,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [id, fullname, username, email, password];
}
