import 'package:flutter/material.dart';
import 'package:hieuductran/screens/setting/widgets/setting_switch.dart';

class SettingListNotification extends StatelessWidget {
  const SettingListNotification({
    super.key,
    required this.title,
    this.isSwitch = true
  });

  final String title;
  final bool isSwitch;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
      ),
      trailing: SettingSwitch(isSwitch: isSwitch,),
    );
  }
}
