import 'package:flutter/material.dart';

class LoginLogic {
  void checkLogin(BuildContext context, TextEditingController controllerUser,
      TextEditingController controllerPass) {
    if (controllerUser.text.isEmpty || controllerPass.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Không được để trống tên đăng nhập hoặc mật khẩu!')));
    } else if (controllerUser.text == 'admin' &&
        controllerPass.text == 'admin') {
      Navigator.pushNamed(context, '/homeScreen');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Tên đăng nhập hoặc mật khẩu không đúng!')));
    }
  }
}
