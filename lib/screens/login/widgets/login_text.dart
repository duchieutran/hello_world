import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  const LoginText(
      {super.key,
      required this.title,
      this.color = Colors.black,
      this.fsize = 16,
      this.fweight = FontWeight.normal});

  final String title;
  final Color? color;
  final double? fsize;
  final FontWeight? fweight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: Text(
        title,
        style: TextStyle(color: color, fontSize: fsize, fontWeight: fweight),
      ),
    );
  }
}
