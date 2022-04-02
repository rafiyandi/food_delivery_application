import 'package:food_delivery_aplication/pages/detail_product_page.dart';
import 'package:food_delivery_aplication/pages/edit_profile.dart';
import 'package:food_delivery_aplication/pages/get_started.dart';
import 'package:food_delivery_aplication/pages/home/home_page.dart';
import 'package:food_delivery_aplication/pages/home/main_page.dart';
import 'package:food_delivery_aplication/pages/home/profile_page.dart';
import 'package:food_delivery_aplication/pages/sign_in_page.dart';
import 'package:food_delivery_aplication/pages/sign_up_page.dart';
import 'package:food_delivery_aplication/pages/splash_page.dart';
import 'package:food_delivery_aplication/routes/route_name.dart';
import 'package:get/get.dart';

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
      page: () => const HomePage(),
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
