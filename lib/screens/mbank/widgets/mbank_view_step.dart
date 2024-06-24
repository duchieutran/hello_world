import 'package:flutter/material.dart';
import 'package:hieuductran/screens/mbank/widgets/mbank_text.dart';

import 'mbank_data_step.dart';

class MbankViewStep extends StatelessWidget {
  const MbankViewStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      height: 180,
      child: ListView.builder(
        itemCount: 2, // Số lượng bước
        itemBuilder: (context, index) {
          final step = MbankStep().step[index];
          return ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  )),
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Text(
                  '${step['index']}',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            title: MbankText(
              text: step['title'],
              size: 16,
              color: Colors.blue,
              weight: FontWeight.bold,
            ),
            subtitle: MbankText(text: step['subtitle'], size: 12),
          );
        },
      ),
    );
  }
}
