import 'package:flutter/material.dart';

import 'login_text.dart';

class LoginTextButton extends StatefulWidget {
  const LoginTextButton({
    super.key,
    this.mainAxitsAlm = MainAxisAlignment.start,
    required this.text,
    required this.function,
  });

  final MainAxisAlignment mainAxitsAlm;
  final String text;
  final void Function()? function;
  // final double height;

  @override
  State<LoginTextButton> createState() => _LoginTextButtonState();
}

class _LoginTextButtonState extends State<LoginTextButton> {
  late MainAxisAlignment _mainAxitsAlm;
  late String _text;
  late void Function()? _function;
  // late double _height;

  @override
  void initState() {
    super.initState();
    _mainAxitsAlm = widget.mainAxitsAlm;
    _text = widget.text;
    _function = widget.function;
    // _height = widget.height;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: _mainAxitsAlm,
      children: [
        TextButton(
          onPressed: _function,
          style: TextButton.styleFrom(
            minimumSize: const Size(0, 0),
          ),
          child: LoginText(title: _text),
        ),
      ],
    );
  }
}
