import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_aplication/aplication/auth/cubit/auth_cubit.dart';
import 'package:food_delivery_aplication/shared/theme.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  // bool isLoading = false;

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

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

    Widget signInButton() {
      return BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
        // TODO: implement listener
        if (state is AuthSuccess) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/main-page', (route) => false);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Login Berhasil'),
            backgroundColor: priceColor,
          ));
        } else if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.errorMessage),
            backgroundColor: Colors.red,
          ));
        }
      }, builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(top: 30),
          height: 50,
          width: double.infinity,
          child: (state is AuthLoading)
              ? _loadingButtonLogin()
              : _buttonLogin(context),
        );
      });
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
                Navigator.pushNamed(context, '/sign-up');
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
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(),
                  emailInput(),
                  passwordInput(),
                  // isLoading ? LoadingButton() : signInButton(),
                  signInButton(),
                  const Spacer(),
                  footer(),
                ],
              ),
            ),
          ),
        ));
  }

  TextButton _buttonLogin(BuildContext context) {
    return TextButton(
        // onPressed: hendleSignIn,
        onPressed: () {
          context.read<AuthCubit>().signIn(
              email: emailController.text, password: passwordController.text);
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

  TextButton _loadingButtonLogin() {
    return TextButton(
        onPressed: null,
        // onPressed: hendleSignIn,
        style: TextButton.styleFrom(
            backgroundColor: priceColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: CircularProgressIndicator());
  }
}
