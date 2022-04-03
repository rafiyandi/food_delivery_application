import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_aplication/shared/theme.dart';

import '../../aplication/auth/cubit/auth_cubit.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState

    super.initState();
    Timer(const Duration(seconds: 3), () {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        print(user.email);
        context.read<AuthCubit>().getCurrentUser(user.uid);
        Navigator.pushReplacementNamed(context, '/main-page');
      } else {
        Navigator.pushReplacementNamed(context, '/get-started');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/img/image_splash_page.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
