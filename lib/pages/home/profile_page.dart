import 'package:flutter/material.dart';
import 'package:food_delivery_aplication/pages/home/edit_profile.dart';
import 'package:food_delivery_aplication/pages/sign_in_page.dart';
import 'package:food_delivery_aplication/shared/theme.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // AuthProvider authProvider = Provider.of<AuthProvider>(context);
    // UserModel user = authProvider.user;
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
            child: Container(
          margin: EdgeInsets.all(30),
          child: Row(
            children: [
              ClipOval(
                  child: Image.asset(
                "assets/img/image_profile_user.png",
                width: 64,
              )),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hallo, Rafi",
                      style: titleTextStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold),
                    ),
                    Text(
                      "@Rafiyandi",
                      style: secondSubtitleTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                      (route) => false);
                },
                child: Image.asset(
                  "assets/icon/icon_exit_button.png",
                  width: 20,
                ),
              )
            ],
          ),
        )),
      );
    }

    Widget menuItem(text) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: titleTextStyle.copyWith(fontSize: 13),
            ),
            Icon(
              Icons.chevron_right,
              color: primaryColor,
            )
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          width: double.infinity,
          // decoration: BoxDecoration(color: backgroundColor3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Account",
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: semiBold),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Editprofile()));
                  },
                  child: menuItem("Edit Profile")),
              menuItem("Your Orders"),
              menuItem("Help"),
              SizedBox(height: 30),
              Text(
                "General",
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: semiBold),
              ),
              menuItem("Privacy & Policy"),
              menuItem("Term of Service"),
              menuItem("Rate App"),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
