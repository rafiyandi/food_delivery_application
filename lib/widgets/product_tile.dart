import 'package:flutter/material.dart';
import 'package:food_delivery_aplication/pages/detail_product_page.dart';
import 'package:food_delivery_aplication/shared/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailProductPage()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        height: 207,
        width: 155,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 0.1,
                spreadRadius: 0.5,
                offset: Offset(1, 1),
              ),
              BoxShadow(
                color: secondaryColor,
                blurRadius: 0,
                spreadRadius: 1,
                offset: Offset(-4, -4),
              ),
            ]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/icon/icon_star.png",
                  width: 16,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "4.8",
                  style: titleTextStyle.copyWith(fontSize: 12),
                )
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Image.asset(
              "assets/img/image_burger.png",
              width: 87,
            ),
            SizedBox(
              height: 11,
            ),

            //Bagian Title Burger
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chicken burger",
                  style:
                      titleTextStyle.copyWith(fontSize: 18, fontWeight: bold),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "200 gr chicken + cheese\nLettuce + tomato",
                  style: titleTextStyle.copyWith(fontSize: 11),
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$ 22.00",
                        style: priceTextStyle.copyWith(
                            fontSize: 14, fontWeight: bold)),
                    Image.asset(
                      "assets/icon/icon_max.png",
                      width: 24,
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
