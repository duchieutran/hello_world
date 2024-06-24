import 'package:flutter/material.dart';

class MbankText extends StatelessWidget {
  const MbankText(
      {super.key,
      required this.text,
      required this.size,
      this.weight = FontWeight.normal,
      this.color = Colors.black,
      this.mainAxisAlm = MainAxisAlignment.start});

  final String text;
  final double size;
  final FontWeight? weight;
  final Color color;
  final MainAxisAlignment mainAxisAlm;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2, bottom: 2),
      child: Row(
        mainAxisAlignment: mainAxisAlm,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: size, fontWeight: weight, color: color),
          ),
        ],
      ),
    );
  }
}
