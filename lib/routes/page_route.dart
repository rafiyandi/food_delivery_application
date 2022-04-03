import 'package:food_delivery_aplication/presentation/pages/home/home_page.dart';
import 'package:food_delivery_aplication/presentation/pages/home/main_page.dart';
import 'package:food_delivery_aplication/presentation/pages/home/profile_page.dart';
import 'package:food_delivery_aplication/presentation/pages/product/detail_product_page.dart';
import 'package:food_delivery_aplication/presentation/profile/edit_profile.dart';
import 'package:food_delivery_aplication/presentation/sign_in/sign_in_page.dart';
import 'package:food_delivery_aplication/presentation/sign_up/sign_up_page.dart';
import 'package:food_delivery_aplication/presentation/splash_page/get_started.dart';
import 'package:food_delivery_aplication/routes/route_name.dart';
import 'package:get/get.dart';

import '../presentation/splash_page/splash_page.dart';

class AppRoute {
  static final pages = [
    GetPage(
      name: RouteName.splash,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: RouteName.getStarted,
      page: () => const GetStarted(),
    ),
    GetPage(
      name: RouteName.mainPage,
      page: () => const MainPage(),
    ),
    GetPage(
      name: RouteName.signIn,
      page: () => const SignInPage(),
    ),
    GetPage(
      name: RouteName.signUp,
      page: () => const SignUpPage(),
    ),
    GetPage(
      name: RouteName.home,
      page: () => HomePage(),
    ),
    GetPage(
      name: RouteName.detailProduct,
      page: () => const DetailProductPage(),
    ),
    GetPage(
      name: RouteName.profile,
      page: () => const ProfilePage(),
    ),
    GetPage(
      name: RouteName.editProfile,
      page: () => EditProfilePage(),
    ),
  ];
}
