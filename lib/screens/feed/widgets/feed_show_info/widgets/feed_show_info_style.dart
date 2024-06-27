import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hieuductran/screens/feed/widgets/feed_data.dart';
import 'package:hieuductran/screens/feed/widgets/feed_show_info/widgets/feed_show_info_text.dart';

class FeedShowInfoStyle extends StatelessWidget {
  const FeedShowInfoStyle({super.key, required this.gmail});
  final String? gmail;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> dataName =
        FeedData().usersFeed.firstWhere((value) => value['email'] == gmail);

    return Container(
      color: const Color.fromARGB(255, 135, 207, 248),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 170),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 7,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FeedShowInfoText(
                  title: dataName['name'],
                  fsize: 22,
                  fweight: FontWeight.bold,
                  color: Colors.red,
                ),
                FeedShowInfoText(
                    title: '${'show_age'.tr()} ${dataName['age']}'),
                FeedShowInfoText(title: 'Gmail : ${dataName['email']}'),
                FeedShowInfoText(
                    title: '${'show_address'.tr()} ${dataName['address']}'),
              ],
            ),
          ),
          Positioned(
            top: 120,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 4,
                  color: Colors.blue,
                ),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(dataName['logo']),
                radius: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
