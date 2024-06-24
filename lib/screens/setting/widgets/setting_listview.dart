import 'package:flutter/material.dart';

class SettingListview extends StatelessWidget {
  const SettingListview(
      {super.key,
      required this.children,
      this.shrinkWrap = true,
      this.physics = const AlwaysScrollableScrollPhysics()});

  final List<Widget> children;
  final bool shrinkWrap;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: shrinkWrap, // không gian của list
      physics: physics,
      children: children,
      // SettingListaccount(title: 'Change password'),
      // SettingListaccount(title: 'Content Settings'),
      // SettingListaccount(title: 'Social'),
      // SettingListaccount(title: 'Language'),
      // SettingListaccount(title: 'Privacy and Security'),
    );
  }
}
