import 'package:flutter/material.dart';

class LoginAccount extends StatelessWidget {
  const LoginAccount({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5),
      child: ClipOval(
        child: Image.asset(
          image,
          height: 30,
          width: 30,
        ),
      ),
    );
  }
}
