import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food_delivery_aplication/domain/auth/user_model.dart';
import 'package:food_delivery_aplication/infrastruktur/auth/auth_repository.dart';
import 'package:food_delivery_aplication/infrastruktur/auth/user_repository.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signIn({
    required String email,
    required String password,
  }) async {
    try {
      emit(AuthLoading());

      UserModel user = await AuthRepository().signIn(
        email: email,
        password: password,
      );
      emit(AuthSuccess(user));
    } catch (errorMessage) {
      emit(AuthFailed(errorMessage.toString()));
    }
  }

  void signUp({
    required String fullname,
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      emit(AuthLoading());

      UserModel user = await AuthRepository().signUp(
        fullname: fullname,
        username: username,
        email: email,
        password: password,
        id: '',
      );

      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  void signOut() {
    try {
      AuthLoading();
      AuthRepository().signOut();
      emit(AuthInitial());
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  void getCurrentUser(String id) async {
    try {
      UserModel user = await UserRepository().getUserById(id);
      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}
