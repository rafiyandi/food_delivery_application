import 'package:flutter/material.dart';
import 'package:food_delivery_aplication/pages/sign_up_page.dart';

import '../shared/theme.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    // AuthProvider authProvider = Provider.of<AuthProvider>(context);

    // hendleSignIn() async {
    //   setState(() {
    //     isLoading = true;
    //   });

    //   if (await authProvider.login(
    //       email: emailController.text, password: passwordController.text)) {
    //     Navigator.pushNamed(context, '/home');
    //   } else {
    //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //       content: Text(
    //         'Login Gagal',
    //         textAlign: TextAlign.center,
    //       ),
    //       backgroundColor: alertColor,
    //     ));
    //   }
    //   setState(() {
    //     isLoading = false;
    //   });
    // }

    Widget header() {
      return Container(
          margin: const EdgeInsets.only(
            top: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
                style: primaryTextStyle.copyWith(
                    fontSize: 24, fontWeight: semiBold),
              ),
              const SizedBox(
                height: 2,
              ),
              Text("Sign In to Countinue", style: secondSubtitleTextStyle)
            ],
          ));
    }

    Widget emailInput() {
      return Container(
          margin: const EdgeInsets.only(top: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email Address",
                style: secondPrimaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: medium),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: priceColor, width: 1),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 1,
                          spreadRadius: 1,
                          offset: Offset(1, 3)),
                    ]),
                child: Center(
                  child: Row(
                    children: [
                      Image.asset('assets/icon/icon_email.png', width: 17),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                          child: TextFormField(
                              controller: emailController,
                              style: primaryTextStyle,
                              decoration: InputDecoration.collapsed(
                                  hintText: "Your Email Address",
                                  hintStyle: subtitleTextStyle)))
                    ],
                  ),
                ),
              )
            ],
          ));
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Password",
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: medium)),
            const SizedBox(height: 12),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: priceColor, width: 1),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(1, 3)),
                  ]),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icon/icon_password.png",
                      width: 17,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: TextFormField(
                      controller: passwordController,
                      style: primaryTextStyle,
                      obscureText: true,
                      decoration: InputDecoration.collapsed(
                        hintText: "Your Password",
                        hintStyle: subtitleTextStyle,
                      ),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget signInButton() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        height: 50,
        width: double.infinity,
        child: TextButton(
            // onPressed: hendleSignIn,
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
            child: Text(
              "Submit",
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            )),
      );
    }

    Widget footer() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an account?",
                style: subtitleTextStyle.copyWith(fontSize: 12)),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpPage()));
              },
              child: Text(
                "Sign Up",
                style:
                    priceTextStyle.copyWith(fontSize: 12, fontWeight: medium),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: secondaryColor,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                emailInput(),
                passwordInput(),
                // isLoading ? LoadingButton() : signInButton(),
                const Spacer(),
                footer(),
              ],
            ),
          ),
        ));
  }
}
