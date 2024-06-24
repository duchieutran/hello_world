import 'package:flutter/material.dart';

class SettingListaccount extends StatelessWidget {
  const SettingListaccount({
    super.key,
    required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
    );
  }
}
