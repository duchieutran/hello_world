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
          title: const Text('Change Language'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: const Text('English'),
                onTap: () {
                  setState(() {
                    context.setLocale(const Locale('en', 'US'));
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Vui lòng chờ 5s...')));
                    Future.delayed(const Duration(seconds: 5));
                    Navigator.of(context).pop();
                  });
                },
              ),
              ListTile(
                title: const Text('Tiếng Việt'),
                onTap: () {
                  setState(() {
                    context.setLocale(const Locale('vi', 'VN'));
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Vui lòng chờ 5s...')));
                    Future.delayed(const Duration(seconds: 5));
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
          SettingTitle(icon: Icons.person, text: 'setting_person'.tr()),
          const SettingLine(heightLine: 1, thickness: 0.5),
          SettingListview(children: [
            SettingListaccount(
              title: 'setting_password'.tr(),
              func: () {},
            ),
            SettingListaccount(
              title: 'setting_content'.tr(),
              func: () {},
            ),
            SettingListaccount(
              title: 'setting_social'.tr(),
              func: () {},
            ),
            SettingListaccount(
              title: 'setting_language'.tr(),
              func: () {
                _translate();
              },
            ),
            SettingListaccount(
              title: 'setting_pas'.tr(),
              func: () {},
            ),
          ]),
          SettingTitle(icon: Icons.notifications, text: 'setting_noti'.tr()),
          const SettingLine(heightLine: 1, thickness: 0.5),
          SettingListview(
            children: [
              SettingListNotification(title: 'setting_theme'.tr()),
              SettingListNotification(title: 'setting_active'.tr()),
              SettingListNotification(title: 'setting_oppo'.tr()),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              SettingButtonSignout(borderRadius: 20, text: 'sign_out'.tr())
            ]),
          )
        ],
      ),
    );
  }
}
