import 'package:flutter/material.dart';
import 'package:hieuductran/global/appbar_path.dart';
import 'package:hieuductran/screens/login/widgets/login_account.dart';
import 'package:hieuductran/screens/login/widgets/login_form.dart';
import 'package:hieuductran/screens/login/widgets/login_text.dart';
import 'package:hieuductran/screens/login/widgets/login_text_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(24, 165, 196, 1),
                Color.fromARGB(255, 198, 14, 226),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 110, 20, 110),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(height: 10),
                    const LoginForm(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LoginAccount(image: AppbarPath().logoFace),
                        LoginAccount(image: AppbarPath().logoTwitter),
                        LoginAccount(image: AppbarPath().logoGoogle),
                      ],
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    const LoginText(title: 'Or Sign Up Using'),
                    LoginTextButton(
                      text: 'Sign Up',
                      function: () {},
                      mainAxitsAlm: MainAxisAlignment.center,
                      // height: 5,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
