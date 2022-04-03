import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_aplication/aplication/auth/cubit/auth_cubit.dart';
import 'package:food_delivery_aplication/presentation/pages/home/main_page.dart';
import 'package:food_delivery_aplication/presentation/pages/home/profile_page.dart';
import 'package:food_delivery_aplication/presentation/pages/product/detail_product_page.dart';
import 'package:food_delivery_aplication/presentation/profile/edit_profile.dart';
import 'package:food_delivery_aplication/presentation/sign_in/sign_in_page.dart';
import 'package:food_delivery_aplication/presentation/sign_up/sign_up_page.dart';
import 'package:food_delivery_aplication/presentation/splash_page/get_started.dart';
import 'package:food_delivery_aplication/presentation/splash_page/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStarted(),
          '/main-page': (context) => MainPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/detail-product': (context) => DetailProductPage(),
          '/profile': (context) => ProfilePage(),
          '/editProfile': (context) => EditProfilePage(),
        },
        title: 'Flutter Demo',
        // theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.blue,
      ),
      // home: const SplashPage(),
      // getPages: AppRoute.pages,
    );
    // );
  }
}
