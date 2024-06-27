import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hieuductran/screens/login/widgets/login_logic.dart';
import 'package:hieuductran/screens/login/widgets/login_text.dart';
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
        LoginText(title: 'login_pass'.tr()),
        ////////////////////////////////////////////////////////
        LoginTextField(
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _isShow = !_isShow;
                });
              },
              icon: _isShow
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off)),
          controller: _controllerPass,
          change: (value) {
            setState(() {
              checkPass = value;
            });
          },
          helpText: checkPass.length > 1
              ? LoginLogic().checkFormatPass(checkPass)
                  ? 'login_pass_format1'.tr()
                  : 'login_pass_format2'.tr()
              : '',
          helpColor: LoginLogic().checkFormatPass(checkPass)
              ? Colors.green
              : Colors.red,
          hide: _isShow,
          hintText: 'Type your password',
          iconTextField: Icons.lock,
          focus: _focusPass,
          submitted: (value) => LoginLogic().checkLogin(
              context, _controllerUser, _controllerPass, checkEmail, checkPass),
          done: TextInputAction.done,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            LoginText(title: 'login_forgot'.tr()),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            LoginLogic().checkLogin(context, _controllerUser, _controllerPass,
                checkEmail, checkPass);
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          child: Text(
            'login_button'.tr(),
            style: const TextStyle(color: Colors.white),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginText(
              title: 'login_orther'.tr(),
            ),
          ],
        ),
      ],
    );
  }
}
