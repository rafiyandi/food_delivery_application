import 'package:flutter/material.dart';
import 'package:food_delivery_aplication/routes/route_name.dart';
import 'package:food_delivery_aplication/shared/theme.dart';
import 'package:get/get.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/image_splash.png"),
                    fit: BoxFit.cover)),
          ),
          Container(
            margin: const EdgeInsets.only(left: 24, right: 24, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 419),
                  child: Text(
                    "Find and Get\nYour Best Food",
                    style: secondaryTextStyle.copyWith(
                        fontSize: 36, fontWeight: medium),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Find the most delicious food\nwith the best quality and free delivery here",
                  style: secondaryTextStyle.copyWith(fontSize: 16),
                ),
                const SizedBox(height: 50),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteName.signIn);
                    },
                    child: Image.asset(
                      "assets/icon/icon_splash.png",
                      width: 81,
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteName.signIn);
                  },
                  child: Center(
                    child: Text(
                      "Skip",
                      style: subtitleTextStyle.copyWith(fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
