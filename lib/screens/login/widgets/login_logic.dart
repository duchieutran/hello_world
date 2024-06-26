import 'package:flutter/material.dart';
import 'package:hieuductran/screens/login/widgets/login_data.dart';

class LoginLogic {
  void checkLogin(BuildContext context, TextEditingController controllerUser,
      TextEditingController controllerPass,String isCheckUser, String isCheckPass) {
    if (controllerUser.text.isEmpty || controllerPass.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Không được để trống tên đăng nhập hoặc mật khẩu!')));
      return;
    } else if (!checkFormat(isCheckUser,isCheckPass)) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Mật khẩu không đúng định dạng !')));
      return;
    }

    for (var account in LoginData().data) {
      if (account['email'] == controllerUser.text &&
          account['pass'] == controllerPass) {
        Navigator.pushNamed(context, '/homeScreen');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Tên đăng nhập hoặc mật khẩu không đúng!')));
      }
    }
  }

  bool checkFormat(String email, String password) {
  final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  final passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*[!@#$&*%^_+=[\]().|:;"\,?/]).{3,12}$');

  if (!emailRegex.hasMatch(email)) {
    return false; // Email không hợp lệ
  }

  if (!passwordRegex.hasMatch(password)) {
    return false; // Mật khẩu không hợp lệ
  }

  return true;
}
}
