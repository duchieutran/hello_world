import 'package:flutter/material.dart';
import 'package:hieuductran/screens/mbank/widgets/mbank_contact.dart';
import 'package:hieuductran/screens/mbank/widgets/mbank_trick.dart';
import 'package:hieuductran/screens/mbank/widgets/mbank_view_step.dart';
import 'widgets/mbank_text.dart';

class Mbank extends StatefulWidget {
  final Function(int) changeTab;
  const Mbank({super.key, required this.changeTab});

  @override
  State<Mbank> createState() => _MbankState();
}

class _MbankState extends State<Mbank> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 137, 186, 246),
              Color.fromARGB(255, 255, 255, 255)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const MbankText(
                text: 'Chào Mừng 🤚',
                size: 16,
                weight: FontWeight.w600,
                color: Color.fromARGB(255, 23, 42, 214),
              ),
              const SizedBox(height: 10),
              const MbankText(
                text: 'Quý khách đến với MBS',
                size: 21,
                weight: FontWeight.w900,
              ),
              const SizedBox(height: 10),
              const MbankText(
                text:
                    'Khởi đầu hành trình đầu tư chứng khoán của bạn \nchỉ trong vòng 2 phút.',
                size: 14,
              ),
              const SizedBox(height: 20),
              const MbankText(
                text: 'Vui lòng chuẩn bị theo hướng dẫn dưới đây:',
                size: 15,
                weight: FontWeight.bold,
              ),
              const MbankViewStep(),
              const SizedBox(height: 100),
              const MbankContact(phone: '0345736189'),
              const MbankTrick(),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget.changeTab(0);
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 1,
                    ),
                    Text(
                      'Bắt đầu',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
