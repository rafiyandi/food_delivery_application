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
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.all(2),
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
            margin: const EdgeInsets.only(
              left: 24,
              right: 24,
              top: 22,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    "assets/icon/button_back.png",
                    width: 40,
                  ),
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
                  .map(
                    (image) => Padding(
                      padding: const EdgeInsets.only(left: 18, right: 18),
                      child: Image.asset(
                        image,
                        width: MediaQuery.of(context).size.width,
                        height: 310,
                        // fit: BoxFit.cover,
                      ),
                    ),
                  )
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

    Widget description() {
      return Container(
        margin: const EdgeInsets.only(top: 32),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "About",
            style: titleTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            "Crispy seasoned chicken breast, topped with mandatory melted cheese and piled onto soft rolls with onion, avocado, lettuce, tomato and garlic mayo (if ordered). ",
            style: titleTextStyle.copyWith(),
            textAlign: TextAlign.justify,
          )
        ]),
      );
    }

    Widget buttonAddCart() {
      return Container(
        width: double.infinity,
        height: 61,
        margin: const EdgeInsets.only(top: 50),
        child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: priceColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
            onPressed: () {},
            child: Text(
              "Add to Cart",
              style:
                  secondaryTextStyle.copyWith(fontSize: 22, fontWeight: medium),
            )),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 14,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(25),
          ),
          color: secondaryColor,
        ),

        //NOTE : Header
        child: Container(
          //margin default
          margin: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Chicken burger",
                    style:
                        titleTextStyle.copyWith(fontSize: 24, fontWeight: bold),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/icon/icon_star.png",
                        width: 24,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "4.8",
                        style: titleTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "(41 Reviews)",
                        style: titleTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),

              //NOTE:bagian header
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$22.00",
                    style:
                        priceTextStyle.copyWith(fontSize: 24, fontWeight: bold),
                  ),
                  Container(
                    width: 118,
                    height: 40,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: backgroundColor1,
                        borderRadius: BorderRadius.circular(28)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/icon/icon_min.png",
                            width: 32,
                          ),
                          Text(
                            "1",
                            style: titleTextStyle.copyWith(
                              fontSize: 24,
                            ),
                          ),
                          Image.asset(
                            "assets/icon/icon_max.png",
                            width: 32,
                          ),
                        ]),
                  )
                ],
              ),

              //NOTE : Bagian Size

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 23, top: 32),
                    padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
                    width: 93.67,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: priceColor, width: 1),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Size",
                              style: priceTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                            Image.asset(
                              "assets/icon/icon_arrow.png",
                              width: 16,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Medium",
                          style: titleTextStyle.copyWith(
                              fontSize: 18, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 23, top: 32),
                    padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
                    width: 93.67,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: priceColor, width: 1),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Energy",
                              style: priceTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                            Image.asset(
                              "assets/icon/icon_arrow.png",
                              width: 16,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "554 KCal",
                          style: titleTextStyle.copyWith(
                              fontSize: 18, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 32),
                    padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
                    width: 93.67,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: priceColor, width: 1),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Size",
                              style: priceTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                            Image.asset(
                              "assets/icon/icon_arrow.png",
                              width: 16,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "45 min",
                          style: titleTextStyle.copyWith(
                              fontSize: 18, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              description(),
              buttonAddCart(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: backgroundColor1,
        body: ListView(children: [
          header(),
          content(),
        ]));
  }
}
