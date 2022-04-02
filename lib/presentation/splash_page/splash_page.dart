import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery_aplication/routes/route_name.dart';
import 'package:food_delivery_aplication/shared/theme.dart';
import 'package:get/get.dart';

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
    Timer(const Duration(seconds: 3), () => Get.toNamed(RouteName.getStarted));
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
