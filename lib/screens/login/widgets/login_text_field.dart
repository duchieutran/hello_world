import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    super.key,
    required this.controller,
    this.hide = false,
    this.hintText,
    this.iconTextField
  });

  final TextEditingController controller;
  final bool hide;
  final String? hintText;
  final IconData? iconTextField;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: hide,
      decoration: InputDecoration(
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
