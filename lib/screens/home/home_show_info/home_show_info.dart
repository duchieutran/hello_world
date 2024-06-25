import 'package:flutter/material.dart';
import 'package:hieuductran/screens/home/home_show_info/widgets/home_show_info_style.dart';
import 'package:hieuductran/widgets/duchieu_app_bar.dart';

class HomeShowInfo extends StatelessWidget {
  const HomeShowInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DuchieuAppBar(
        heightAppbar: 80,
        title: "Thông Tin Cá Nhân",
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: HomeShowInfoStyle(
        gmail: ModalRoute.of(context)!.settings.arguments as String,
      ),
    );
  }
}
