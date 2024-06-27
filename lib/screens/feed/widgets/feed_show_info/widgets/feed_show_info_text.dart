import 'package:flutter/material.dart';

class FeedShowInfoText extends StatelessWidget {
  const FeedShowInfoText(
      {super.key,
      required this.title,
      this.color = Colors.black,
      this.fsize = 16,
      this.fweight = FontWeight.bold});
  final String title;
  final Color? color;
  final double? fsize;
  final FontWeight? fweight;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Text(
          title,
          style: TextStyle(
            color: color,
            fontSize: fsize,
            fontWeight: fweight,
          ),
        ),
      ),
    );
  }
}
