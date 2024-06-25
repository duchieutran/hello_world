import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hieuductran/screens/mbank/widgets/mbank_text.dart';

class MbankTrick extends StatelessWidget {
  const MbankTrick({super.key, this.ischeck = true,});

  final bool ischeck;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(229, 231, 251, 1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      height: 85,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(Icons.light_sharp),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MbankText(
                  text: 'Cách mở tài khoản nhanh',
                  size: 15,
                  weight: FontWeight.bold,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Nếu các bạn có tài khoản tại ',
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                      const TextSpan(
                        text: 'MB Bank ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                      const TextSpan(
                        text: 'vui lòng xem\nhướng dẫn ',
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                      TextSpan(
                        text: 'Tại đây ',
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                             
                            
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
