import 'package:flutter/material.dart';
import 'package:hieuductran/screens/home/home_show_info/widgets/home_show_info_text.dart';
import 'package:hieuductran/screens/home/widgets/home_data.dart';
// import 'package:hieuductran/screens/profile/profile.dart';

class HomeShowInfoStyle extends StatelessWidget {
  const HomeShowInfoStyle({super.key, required this.gmail});
  final String? gmail;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> dataName =
        HomeData().users.firstWhere((value) => value['email'] == gmail);

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
                HomeShowInfoText(
                  title: dataName['name'],
                  fsize: 22,
                  fweight: FontWeight.bold,
                  color: Colors.red,
                ),
                HomeShowInfoText(title: 'Tuổi : ${dataName['age']}'),
                HomeShowInfoText(title: 'Gmail : ${dataName['email']}'),
                HomeShowInfoText(title: 'Địa Chỉ : ${dataName['address']}'),
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
