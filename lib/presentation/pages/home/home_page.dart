import 'package:flutter/material.dart';
import 'package:food_delivery_aplication/shared/theme.dart';
import 'package:food_delivery_aplication/widgets/product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget location() {
      return Row(
        children: [
          Image.asset(
            "assets/icon/icon_location.png",
            width: 20,
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            "Nevada, US",
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
          const SizedBox(
            width: 12,
          ),
          Image.asset(
            "assets/icon/icon_arrow.png",
            width: 20,
          )
        ],
      );
    }

    Widget headerDelivery() {
      return Container(
        margin: const EdgeInsets.only(top: 25),
        child: Row(
          children: [
            Text(
              "Order Your Food\nFast and Free",
              style:
                  primaryTextStyle.copyWith(fontSize: 28, fontWeight: medium),
            ),
            const SizedBox(
              width: 23,
            ),
            Image.asset(
              "assets/img/image_vespa.png",
              width: 100,
            )
          ],
        ),
      );
    }

    Widget search() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                  padding: const EdgeInsets.all(12.5),
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(color: subtitleColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/icon/icon_search.png"),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration.collapsed(
                              hintStyle:
                                  subtitleTextStyle.copyWith(fontSize: 18),
                              hintText: "Search"),
                        ),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              width: 16,
            ),
            Image.asset(
              "assets/icon/Icon_filter.png",
              width: 48,
            )
          ],
        ),
      );
    }

    Widget titleCatagories() {
      return Container(
        margin: const EdgeInsets.only(top: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Categories",
              style:
                  primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
            ),
          ],
        ),
      );
    }

    Widget scrollCategories(gambar, text) {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              height: 40,
              decoration: BoxDecoration(
                  color: priceColor, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Image.asset(
                    gambar,
                    width: 24,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    text,
                    style: secondaryTextStyle.copyWith(
                        fontSize: 18, fontWeight: bold),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 12,
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
          margin: const EdgeInsets.only(top: 16),
          child: Column(
            children: [
              Row(
                children: const [
                  ProductTile(),
                  SizedBox(
                    width: 17,
                  ),
                  ProductTile(),
                ],
              ),
              const SizedBox(
                height: 17,
              ),
              Row(
                children: const [
                  ProductTile(),
                  SizedBox(
                    width: 17,
                  ),
                  ProductTile(),
                ],
              ),
              const SizedBox(
                height: 17,
              ),
              Row(
                children: const [
                  ProductTile(),
                  SizedBox(
                    width: 17,
                  ),
                  ProductTile(),
                ],
              ),
            ],
          ));
    }

    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 10, left: 24, right: 24),
      child: ListView(
        children: [
          location(),
          headerDelivery(),
          search(),
          titleCatagories(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                scrollCategories("assets/img/image_burger.png", "Burger"),
                scrollCategories("assets/icon/icon_sandwich.png", "Sandwich"),
                scrollCategories("assets/img/image_burger.png", "Burger"),
                scrollCategories("assets/img/image_burger.png", "Burger"),
              ],
            ),
          ),
          content()
        ],
      ),
    );
  }
}
