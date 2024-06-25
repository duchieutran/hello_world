import 'package:flutter/material.dart';
import 'package:hieuductran/screens/home_screen/home_sceen.dart';
import 'package:hieuductran/screens/login/widgets/login_text.dart';
import 'package:hieuductran/screens/login/widgets/login_text_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late final _controllerUser;
  late final _controllerPass;

  @override
  void initState() {
    super.initState();
    _controllerUser = TextEditingController();
    _controllerPass = TextEditingController();
  }

  @override
  void dispose() {
    _controllerUser.dispose();
    _controllerPass.dispose();
    super.dispose();
  }

  void _checkLogin() {
    if (_controllerUser.text.isEmpty || _controllerPass.text.isEmpty) {
      // print('Vui lòng không để trống tài khoản và mật khẩu!');
    } else if (_controllerUser.text == 'admin' &&
        _controllerPass.text == '123456') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
      return;
    } else {
      // print('Tài Khoản Mật Khẩu sai!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const LoginText(title: 'Username : '),
        TextField(
          controller: _controllerUser,
          decoration: const InputDecoration(
            hintText: 'Type your username',
            hintStyle: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 111, 108, 108)),
            prefixIcon: Icon(
              Icons.person,
              color: Color.fromARGB(255, 111, 108, 108),
            ),
          ),
        ),
        const LoginText(title: 'Password : '),
        TextField(
          controller: _controllerPass,
          decoration: const InputDecoration(
            hintText: 'Type your password',
            hintStyle: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 111, 108, 108)),
            prefixIcon: Icon(
              Icons.lock,
              color: Color.fromARGB(255, 111, 108, 108),
              size: 18,
            ),
          ),
        ),
        LoginTextButton(
          function: () {},
          text: 'Forgot Password ?',
        ),
        ElevatedButton(
          onPressed: _checkLogin,
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
