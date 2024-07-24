import 'package:crud/core/theme/app_pallert.dart';
import 'package:crud/features/auth/presentation/pages/login_pages.dart';
import 'package:crud/features/auth/presentation/pages/widgets/auth_field.dart';
import 'package:crud/features/auth/presentation/pages/widgets/auth_gradient_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupPage extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const SignupPage(),
      );
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 250),
                  child: Center(
                    child: Text(
                      "SIGN UP.",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 45),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthField(hintText: "Name"),
                const SizedBox(
                  height: 15,
                ),
                AuthField(hintText: "Email"),
                const SizedBox(
                  height: 15,
                ),
                AuthField(hintText: "Password"),
                const SizedBox(
                  height: 15,
                ),
                AuthGradientButton(
                  buttonText: 'Sign Up',
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, LoginPage.route());
                  },
                  child: RichText(
                    text: TextSpan(text: "Don't have an account?  ", children: [
                      TextSpan(
                        text: 'Sign In',
                        style: TextStyle(
                            color: AppPallete.gradient2,
                            fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
