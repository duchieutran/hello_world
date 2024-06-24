import 'package:flutter/material.dart';

class SettingLine extends StatelessWidget {
  const SettingLine(
      {super.key, required this.heightLine, required this.thickness});

  final double heightLine;
  final double thickness;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.black,
      height: heightLine,
      thickness: thickness,
    );
  }
}
