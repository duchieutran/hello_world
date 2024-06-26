import 'package:flutter/material.dart';
import 'package:hieuductran/screens/login/widgets/login_data.dart';

class LoginLogic {
  void checkLogin(
      BuildContext context,
      TextEditingController controllerUser,
      TextEditingController controllerPass,
      String isCheckUser,
      String isCheckPass) {
    if (controllerUser.text.isEmpty || controllerPass.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Không được để trống tên đăng nhập hoặc mật khẩu!')));
      return;
    } else if (!checkFormatPass(isCheckPass) &&
        !checkFormatEmail(isCheckUser)) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Mật khẩu không đúng định dạng!')));
      return;
    }

    bool checkLogin = false;
    for (int i = 0; i < LoginData().data.length; i++) {
      if (LoginData().data[i]['email'] == controllerUser.text &&
          LoginData().data[i]['pass'] == controllerPass.text) {
        checkLogin = true;
        break;
      }
    }

    if (checkLogin) {
      Navigator.pushNamed(context, '/homeScreen');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Tên đăng nhập hoặc mật khẩu không đúng!')));
    }
  }

  bool checkFormatEmail(String email) {
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailRegex.hasMatch(email)) {
      return false;
    }
    return true;
  }

  bool checkFormatPass(String password) {
    final passwordRegex =
        RegExp(r'^(?=.*[A-Z])(?=.*[!@#$&*%^_+=[\]().|:;"\,?/]).{3,12}$');
    if (!passwordRegex.hasMatch(password)) {
      return false;
    }
    return true;
  }
}
