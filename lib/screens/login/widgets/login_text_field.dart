import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField(
      {super.key,
      required this.controller,
      this.hide = false,
      this.hintText,
      this.iconTextField,
      this.focus,
      this.submitted,
      this.done,
      this.inputType = TextInputType.text,
      this.change,
      this.helpText,
      this.suffixIcon,
      this.helpColor});

  final TextEditingController controller;
  final bool hide;
  final String? hintText;
  final IconData? iconTextField;
  final FocusNode? focus;
  final Function(String)? submitted;
  final TextInputAction? done;
  final TextInputType? inputType;
  final Function(String)? change;
  final String? helpText;
  final Widget? suffixIcon;
  final Color? helpColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      onChanged: change,
      focusNode: focus,
      onFieldSubmitted: submitted,
      controller: controller,
      obscureText: hide,
      textInputAction: done,
      decoration: InputDecoration(
        helperText: helpText,
        helperStyle: TextStyle(color: helpColor),
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 111, 108, 108)),
        prefixIcon: Icon(
          iconTextField,
          color: const Color.fromARGB(255, 111, 108, 108),
          size: 18,
        ),
      ),
    );
  }
}
