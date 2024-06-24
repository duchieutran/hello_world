import 'package:flutter/material.dart';

class SettingButtonSignout extends StatefulWidget {
  const SettingButtonSignout(
      {super.key,
      this.borderRadius = 4,
      required this.text,
      this.colorBackground = Colors.white,
      this.colorForeground = Colors.black});

  final String text;
  final double borderRadius;
  final Color colorBackground;
  final Color colorForeground;

  @override
  State<SettingButtonSignout> createState() => _SettingButtonSignoutState();
}

class _SettingButtonSignoutState extends State<SettingButtonSignout> {
  late String _text;
  late double _borderRadius;
  late Color _colorBackground;
  late Color _colorForeground;
  @override
  void initState() {
    _text = widget.text;
    _borderRadius = widget.borderRadius;
    _colorBackground = widget.colorBackground;
    _colorForeground = widget.colorForeground;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          // maximumSize: BoxConstraints(maxHeight: 35, maxWidth: 65),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(_borderRadius)),
          backgroundColor: _colorBackground,
          foregroundColor: _colorForeground,
          side: const BorderSide(color: Colors.black, width: 1),
          padding:
              const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
        ),
        child: Text(
          _text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        ));
  }
}
