import 'package:crud/core/theme/app_pallert.dart';
import 'package:crud/features/auth/presentation/pages/signup_page.dart';
import 'package:crud/features/auth/presentation/pages/widgets/auth_field.dart';
import 'package:crud/features/auth/presentation/pages/widgets/auth_gradient_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const LoginPage(),
      );
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      "Sign In.",
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
                AuthField(hintText: "Email"),
                const SizedBox(
                  height: 15,
                ),
                AuthField(hintText: "Password"),
                const SizedBox(
                  height: 15,
                ),
                AuthGradientButton(
                  buttonText: 'Sign In',
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupPage(),
                      ),
                    );
                  },
                  child: RichText(
                    text: TextSpan(text: "Don't have an account?  ", children: [
                      TextSpan(
                        text: 'Sign Un',
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
