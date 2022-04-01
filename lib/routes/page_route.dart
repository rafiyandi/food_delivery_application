import 'package:food_delivery_aplication/pages/detail_product_page.dart';
import 'package:food_delivery_aplication/pages/get_started.dart';
import 'package:food_delivery_aplication/pages/home/edit_profile.dart';
import 'package:food_delivery_aplication/pages/home/home_page.dart';
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
      page: () => SplashPage(),
    ),
    GetPage(
      name: RouteName.getStarted,
      page: () => GetStarted(),
    ),
    GetPage(
      name: RouteName.signIn,
      page: () => SignInPage(),
    ),
    GetPage(
      name: RouteName.signUp,
      page: () => SignUpPage(),
    ),
    GetPage(
      name: RouteName.home,
      page: () => HomePage(),
    ),
    GetPage(
      name: RouteName.detailProduct,
      page: () => DetailProductPage(),
    ),
    GetPage(
      name: RouteName.profile,
      page: () => ProfilePage(),
    ),
    GetPage(
      name: RouteName.editProfile,
      page: () => Editprofile(),
    ),
  ];
}
