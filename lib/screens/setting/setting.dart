import 'package:easy_localization/easy_localization.dart';
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
  void _translate() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Change Language'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('English'),
                onTap: () {
                  setState(() {
                    context.locale = Locale('en', 'US');
                    Navigator.of(context).pop();
                  });
                },
              ),
              ListTile(
                title: Text('Tiếng Việt'),
                onTap: () {
                  setState(() {
                    context.locale = Locale('vi', 'VN');
                    Navigator.of(context).pop();
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          const SettingTitle(icon: Icons.person, text: '  Persion'),
          const SettingLine(heightLine: 1, thickness: 0.5),
          SettingListview(children: [
            SettingListaccount(
              title: 'Change password',
              func: () {},
            ),
            SettingListaccount(
              title: 'Content Settings',
              func: () {},
            ),
            SettingListaccount(
              title: 'Social',
              func: () {},
            ),
            SettingListaccount(
              title: 'Language',
              func: () {
                _translate();
              },
            ),
            SettingListaccount(
              title: 'Privacy and Security',
              func: () {},
            ),
          ]),
          const SettingTitle(
              icon: Icons.notifications, text: '  Notifications'),
          const SettingLine(heightLine: 1, thickness: 0.5),
          const SettingListview(
            children: [
              SettingListNotification(title: 'Change password'),
              SettingListNotification(title: 'Account Active'),
              SettingListNotification(title: 'Opportunity'),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(children: [
              SettingButtonSignout(borderRadius: 20, text: 'Sign Out')
            ]),
          )
        ],
      ),
    );
  }
}
