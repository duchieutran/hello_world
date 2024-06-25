import 'package:flutter/material.dart';
import 'package:hieuductran/screens/login/widgets/login_logic.dart';
import 'package:hieuductran/screens/login/widgets/login_text.dart';
import 'package:hieuductran/screens/login/widgets/login_text_button.dart';
import 'package:hieuductran/screens/login/widgets/login_text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _controllerUser = TextEditingController();
  final _controllerPass = TextEditingController();
  final _loginLogic = LoginLogic();

  @override
  void dispose() {
    _controllerUser.dispose();
    _controllerPass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const LoginText(title: 'Username : '),
        LoginTextField(
          controller: _controllerUser,
          hintText: 'Type your username',
          iconTextField: Icons.person,
        ),
        Stack(
          alignment: Alignment.centerRight,
          children: [
            LoginTextField(
              controller: _controllerPass,
              hide: true,
              hintText: 'Type your username',
              iconTextField: Icons.lock,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.visibility))
          ],
        ),
        LoginTextButton(
          mainAxitsAlm: MainAxisAlignment.end,
          function: () {},
          text: 'Forgot Password ?',
        ),
        ElevatedButton(
          onPressed: () {
            _loginLogic.checkLogin(context, _controllerUser, _controllerPass);
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          child: const Text(
            'LOGIN',
            style: TextStyle(color: Colors.white),
          ),
        ),
        LoginTextButton(
            function: () {},
            mainAxitsAlm: MainAxisAlignment.center,
            text: 'Or Sign Up Using'),
      ],
    );
  }
}
