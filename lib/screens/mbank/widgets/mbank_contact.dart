import 'package:flutter/material.dart';
import 'package:hieuductran/screens/mbank/widgets/mbank_text.dart';
import 'package:url_launcher/url_launcher.dart';

class MbankContact extends StatelessWidget {
  const MbankContact({super.key, required this.phone});
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Icon(
        Icons.phone,
        size: 18,
        color: Colors.blue,
      ),
      const MbankText(
        text: ' Tổng đài CSKH : ',
        size: 15,
        weight: FontWeight.w600,
      ),
      TextButton(
          onPressed: () async {
            final Uri launchUri = Uri(
              scheme: 'tel',
              path: phone,
            );
            if (await canLaunchUrl(launchUri)) {
              await launchUrl(launchUri);
            } else {
              throw 'Could not launch $phone';
            }
          },
          child: MbankText(
            text: phone,
            size: 15,
            weight: FontWeight.w600,
            color: Colors.blue,
          ))
    ]);
  }
}
