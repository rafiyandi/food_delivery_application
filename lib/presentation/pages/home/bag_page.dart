import 'package:flutter/material.dart';
import 'package:food_delivery_aplication/presentation/bag/bag_card.dart';
import 'package:food_delivery_aplication/routes/route_name.dart';
import 'package:food_delivery_aplication/shared/theme.dart';
import 'package:get/get.dart';

class BagPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget emptyCart() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icon/icon_empty_cart.png",
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Opss! Your Cart is Empty",
              style:
                  subtitleTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Let's find your favorite shoes",
              style: secondSubtitleTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 44,
              width: 152,
              child: TextButton(
                  onPressed: () {
                    Get.toNamed(RouteName.home);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: priceColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text(
                    "Explore Store",
                    style: secondaryTextStyle.copyWith(
                        fontWeight: medium, fontSize: 16),
                  )),
            )
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        children: [BagCard()],
      );
    }

    Widget costumBottomNav() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        height: 180,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Subtotal",
                  style: primaryTextStyle,
                ),
                Text(
                  "\$287,96",
                  style: priceTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 0.3,
              color: priceColor,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, "/checkout");
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: priceColor,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Continue",
                        style: secondaryTextStyle.copyWith(
                            fontSize: 16, fontWeight: semiBold),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: secondaryColor,
                      )
                    ],
                  )),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: backgroundColor1,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: priceColor,
          ),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          "Your Cart",
          style: primaryTextStyle,
        ),
      ),
      body: content(),
      // bottomNavigationBar: costumBottomNav(),
    );
  }
}
