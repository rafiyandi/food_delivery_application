import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery_aplication/routes/route_name.dart';
import 'package:food_delivery_aplication/shared/theme.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 3), () => Get.toNamed(RouteName.getStarted));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: BoxDecoration(
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
