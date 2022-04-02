import 'package:flutter/material.dart';
import 'package:food_delivery_aplication/shared/theme.dart';

class BagCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 30, left: 30, right: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: secondaryColor,
            border: Border.all(color: priceColor, width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 1,
                spreadRadius: 1,
                offset: Offset(2, 2),
              )
            ]),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage("assets/img/image_burger.png"))),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Terrex Urban Low",
                        style: primaryTextStyle.copyWith(fontWeight: semiBold),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "\$143,98",
                        style: priceTextStyle,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/icon/icon_max.png",
                      width: 16,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text("2", style: primaryTextStyle),
                    SizedBox(
                      height: 2,
                    ),
                    Image.asset(
                      "assets/icon/icon_min.png",
                      width: 16,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/icon/icon_remove.png",
                  width: 10,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Remove",
                  style:
                      alertTextStyle.copyWith(fontSize: 12, fontWeight: light),
                )
              ],
            )
          ],
        ));
  }
}
