import 'package:flutter/material.dart';

class SettingSwitch extends StatefulWidget {
  const SettingSwitch({super.key, this.isSwitch = false});

  final bool isSwitch;

  @override
  State<SettingSwitch> createState() => _SettingSwitchState();
}

class _SettingSwitchState extends State<SettingSwitch> {
  late bool _isSwitch;

  @override
  void initState() {
    _isSwitch = widget.isSwitch;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isSwitch,
      onChanged: (value) {
        setState(() {
          _isSwitch = value;
        });
      },
    );
  }
}
