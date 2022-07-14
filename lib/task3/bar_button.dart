import 'package:flutter/material.dart';
import 'constants/screen1_consts.dart';

class BarButton extends StatelessWidget {
  const BarButton({
    Key? key,
    this.isActive = false,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final bool isActive;
  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed();
      },
      style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
      child: Container(
        padding: const EdgeInsets.only(bottom: 14),
        width: double.maxFinite,
        decoration: BoxDecoration(
            border: BorderDirectional(
                bottom: BorderSide(
                    width: 4, color: (isActive) ? blue : Colors.transparent))),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: (isActive)
              ? titleStyle.copyWith(fontSize: 16, color: blue)
              : buttonTextStyle.copyWith(color: black),
        ),
      ),
    );
  }
}
