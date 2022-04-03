import 'package:flutter/material.dart';
import 'package:food_delivery_aplication/presentation/pages/home/bag_page.dart';
import 'package:food_delivery_aplication/presentation/pages/home/home_page.dart';
import 'package:food_delivery_aplication/presentation/pages/home/profile_page.dart';
import 'package:food_delivery_aplication/shared/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentindex = 0;

  Widget indicator() {
    return Container(
      width: 32,
      height: 4,
      decoration: BoxDecoration(
          color: priceColor,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(28),
            bottomRight: Radius.circular(28),
          )),
    );
  }

  Widget customBottomNav() {
    return BottomAppBar(
      child: BottomNavigationBar(
        currentIndex: _currentindex,
        onTap: (value) {
          setState(() {
            _currentindex = value;
          });
        },
        backgroundColor: secondaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Container(
                margin: const EdgeInsets.only(top: 15, bottom: 4),
                child: Column(
                  children: [
                    Image.asset(
                      _currentindex == 0
                          ? "assets/icon/icon_home_select.png"
                          : "assets/icon/icon_home_orange.png",
                      width: 22.5,
                      // color: _currentindex == 0 ? priceColor : Colors.grey,
                    ),
                  ],
                )),
            label: _currentindex != 0 ? "" : 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
                margin: const EdgeInsets.only(top: 15, bottom: 4),
                child: Column(
                  children: [
                    Image.asset(
                      _currentindex == 1
                          ? "assets/icon/icon_bag_select.png"
                          : "assets/icon/icon_bag_orange.png",
                      width: 22.5,
                      // color: _currentindex == 0 ? priceColor : Colors.grey,
                    ),
                  ],
                )),
            label: _currentindex != 1 ? "" : 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Container(
                margin: const EdgeInsets.only(top: 15, bottom: 4),
                child: Column(
                  children: [
                    Image.asset(
                      _currentindex == 2
                          ? "assets/icon/icon_profile_select.png"
                          : "assets/icon/icon_profile_orange.png",
                      width: 22.5,
                      // color: _currentindex == 0 ? priceColor : Colors.grey,
                    ),
                  ],
                )),
            label: _currentindex != 2 ? "" : 'Profile',
          ),
        ],
        selectedLabelStyle:
            GoogleFonts.roboto(fontSize: 12, fontWeight: medium),
        selectedItemColor: priceColor,
      ),
    );
  }

  Widget body() {
    switch (_currentindex) {
      case 0:
        return HomePage();
      case 1:
        return BagPage();
      case 2:
        return ProfilePage();
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
