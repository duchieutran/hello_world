import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  const LoginText({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.black,
            // color: Color.fromRGBO(215, 215, 215, 0),
            fontSize: 15,
            fontWeight: FontWeight.normal),
      ),
    );
  }
}
