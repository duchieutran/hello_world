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
  String checkPass = '';
  String checkEmail = '';
  bool _isShow = true;
  final _focusUser = FocusNode();
  final _focusPass = FocusNode();

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
        const LoginText(title: 'Email : '),
        LoginTextField(
          inputType: TextInputType.emailAddress,
          controller: _controllerUser,
          change: (value) {
            setState(() {
              checkEmail = value;
            });
          },
          hintText: 'Type your email',
          iconTextField: Icons.person,
          focus: _focusUser,
          submitted: (value) => FocusScope.of(context).requestFocus(_focusPass),
        ),
        const LoginText(title: 'Password : '),
        Stack(
          alignment: Alignment.centerRight,
          children: [
            LoginTextField(
              controller: _controllerPass,
              change: (value) {
                setState(() {
                  checkPass = value;
                });
              },
              hide: _isShow,
              hintText: 'Type your username',
              iconTextField: Icons.lock,
              focus: _focusPass,
              submitted: (value) => LoginLogic().checkLogin(context,
                  _controllerUser, _controllerPass, checkEmail, checkPass),
              done: TextInputAction.done,
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    _isShow = !_isShow;
                  });
                },
                icon: _isShow
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            LoginText(
              title: checkPass.length > 1
                  ? LoginLogic().checkFormatPass(checkPass)
                      ? 'mật khẩu đúng định dạng'
                      : 'mật khẩu chưa đúng định dạng'
                  : '',
              color: LoginLogic().checkFormatPass(checkPass)
                  ? Colors.green
                  : Colors.red,
              fsize: 13,
            ),
          ],
        ),
        LoginTextButton(
          mainAxitsAlm: MainAxisAlignment.end,
          function: () {},
          text: 'Forgot Password ?',
        ),
        ElevatedButton(
          onPressed: () {
            LoginLogic().checkLogin(context, _controllerUser, _controllerPass,
                checkEmail, checkPass);
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
