import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_aplication/shared/theme.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({Key? key}) : super(key: key);

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  List images = [
    "assets/img/image_burger.png",
    "assets/img/image_burger.png",
    "assets/img/image_burger.png",
    "assets/img/image_burger.png",
    "assets/img/image_burger.png",
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget indicator(int index) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.all(2),
        width: 16,
        height: 16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: secondaryColor,
          border: Border.all(
              color: currentIndex == index ? priceColor : secondaryColor,
              width: 1),
        ),
        child: Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: currentIndex == index ? priceColor : secondaryColor,
          ),
        ),
      );
    }

    Widget header() {
      int index = -1;
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 32, left: 24, right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/icon/button_back.png",
                  width: 40,
                ),
                Image.asset(
                  "assets/icon/icon_favorit.png",
                  width: 40,
                ),
              ],
            ),
          ),
          CarouselSlider(
              items: images
                  .map((image) => Padding(
                        padding: const EdgeInsets.only(
                          left: 18,
                          right: 18,
                        ),
                        child: Image.asset(
                          image,
                          width: MediaQuery.of(context).size.width,
                          height: 310,
                          // fit: BoxFit.cover,
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  })),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e) {
              index++;
              return indicator(index);
            }).toList(),
          )
        ],
      );
    }

    return Scaffold(
        backgroundColor: backgroundColor1,
        body: ListView(children: [
          header(),
        ]));
  }
}
