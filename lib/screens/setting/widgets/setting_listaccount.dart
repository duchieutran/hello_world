import 'package:flutter/material.dart';

class SettingListaccount extends StatelessWidget {
  const SettingListaccount({
    super.key,
    required this.title,
    this.func,
  });

  final String title;
  final VoidCallback? func;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: IconButton(
          onPressed: func,
          icon: const Icon(Icons.chevron_right)),
    );
  }
}
