import 'package:flutter/material.dart';
import 'package:hieuductran/screens/setting/widgets/setting_button_signout.dart';
import 'package:hieuductran/screens/setting/widgets/setting_line.dart';
import 'package:hieuductran/screens/setting/widgets/setting_list_notification.dart';
import 'package:hieuductran/screens/setting/widgets/setting_listaccount.dart';
import 'package:hieuductran/screens/setting/widgets/setting_listview.dart';
import 'package:hieuductran/screens/setting/widgets/setting_title.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingWidget();
  }
}

class SettingWidget extends StatefulWidget {
  const SettingWidget({super.key});

  @override
  State<SettingWidget> createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: const [
          SettingTitle(icon: Icons.person, text: '  Persion'),
          SettingLine(heightLine: 1, thickness: 0.5),
          SettingListview(children: [
            SettingListaccount(title: 'Change password'),
            SettingListaccount(title: 'Content Settings'),
            SettingListaccount(title: 'Social'),
            SettingListaccount(title: 'Language'),
            SettingListaccount(title: 'Privacy and Security'),
          ]),
          SettingTitle(icon: Icons.notifications, text: '  Notifications'),
          SettingLine(heightLine: 1, thickness: 0.5),
          SettingListview(
            children: [
              SettingListNotification(title: 'Change password'),
              SettingListNotification(title: 'Account Active'),
              SettingListNotification(title: 'Opportunity'),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
              SettingButtonSignout(borderRadius: 20, text: 'Sign Out')
            ]),
          )
        ],
      ),
    );
  }
}
