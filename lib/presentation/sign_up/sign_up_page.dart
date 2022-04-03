import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_aplication/aplication/auth/cubit/auth_cubit.dart';
import 'package:food_delivery_aplication/shared/theme.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController fullnameController = TextEditingController(text: '');
  TextEditingController usernameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  bool isLoading = false;

  bool _isHiddenPassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHiddenPassword = !_isHiddenPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
          margin: const EdgeInsets.only(
            top: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign Up",
                style: primaryTextStyle.copyWith(
                    fontSize: 24, fontWeight: semiBold),
              ),
              const SizedBox(
                height: 2,
              ),
              Text("Register and happy shopping",
                  style: secondSubtitleTextStyle)
            ],
          ));
    }

    Widget fullnameInput() {
      return Container(
          margin: const EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Full Name",
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
                          offset: const Offset(1, 3)),
                    ]),
                child: Center(
                  child: Row(
                    children: [
                      Image.asset('assets/icon/icon_profile_select.png',
                          width: 17),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                          child: TextFormField(
                              controller: fullnameController,
                              style: primaryTextStyle,
                              decoration: InputDecoration.collapsed(
                                  hintText: "Your Full Name",
                                  hintStyle: subtitleTextStyle)))
                    ],
                  ),
                ),
              )
            ],
          ));
    }

    Widget usernameinput() {
      return Container(
          margin: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Username",
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
                          offset: const Offset(1, 3)),
                    ]),
                child: Center(
                  child: Row(
                    children: [
                      Image.asset('assets/icon/icon_username.png', width: 17),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                          child: TextFormField(
                              controller: usernameController,
                              style: primaryTextStyle,
                              decoration: InputDecoration.collapsed(
                                  hintText: "Your Username",
                                  hintStyle: subtitleTextStyle)))
                    ],
                  ),
                ),
              )
            ],
          ));
    }

    Widget emailInput() {
      return Container(
          margin: const EdgeInsets.only(top: 20),
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
                          offset: const Offset(1, 3)),
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: priceColor, width: 1),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: const Offset(1, 3)),
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
                        obscureText: _isHiddenPassword,
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: _togglePasswordVisibility,
                            child: Icon(
                              _isHiddenPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color:
                                  _isHiddenPassword ? priceColor : Colors.grey,
                            ),
                          ),
                          border: InputBorder.none,
                          // isCollapsed: true,
                          hintText: "Your Password",
                          hintStyle: subtitleTextStyle,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget signUpButton() {
      return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Sign Up Success"),
              duration: Duration(seconds: 1),
              backgroundColor: priceColor,
            ));
            Navigator.pushNamedAndRemoveUntil(
                context, '/main-page', (route) => false);
          } else if (state is AuthFailed) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.errorMessage),
              backgroundColor: Colors.red,
            ));
          }
        },
        // TODO: implement listener
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.only(top: 30),
            height: 50,
            width: double.infinity,
            child: (state is AuthLoading)
                ? _loginLoadingButton()
                : _loginButton(context),
          );
        },
      );
    }

    Widget footer() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account?",
                style: subtitleTextStyle.copyWith(fontSize: 12)),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-in');
              },
              child: Text(
                "Sign In",
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
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                fullnameInput(),
                usernameinput(),
                emailInput(),
                passwordInput(),
                signUpButton(),
                // isLoading ? LoadingButton() : signInButton(),
                const Spacer(),
                footer(),
              ],
            ),
          ),
        ));
  }

  TextButton _loginButton(BuildContext context) {
    return TextButton(
        // onPressed: hendleSignIn,
        onPressed: () {
          context.read<AuthCubit>().signUp(
              fullname: fullnameController.text,
              username: usernameController.text,
              email: emailController.text,
              password: passwordController.text);
        },
        style: TextButton.styleFrom(
            backgroundColor: priceColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Text(
          "Submit",
          style: secondaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
        ));
  }

  TextButton _loginLoadingButton() {
    return TextButton(
        onPressed: null,
        style: TextButton.styleFrom(
            backgroundColor: priceColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: CircularProgressIndicator());
  }
}
