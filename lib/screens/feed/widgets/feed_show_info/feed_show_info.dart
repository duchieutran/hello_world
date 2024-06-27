import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hieuductran/widgets/duchieu_app_bar.dart';
import 'widgets/feed_show_info_style.dart';

class FeedShowInfo extends StatelessWidget {
  const FeedShowInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DuchieuAppBar(
        heightAppbar: 80,
        title: 'show_info'.tr(),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: FeedShowInfoStyle(
        gmail: ModalRoute.of(context)!.settings.arguments as String,
      ),
    );
  }
}
