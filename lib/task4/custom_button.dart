import 'package:flutter/material.dart';
import 'package:login_ui/task4/consts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.onPressed,
    this.decoration,
    required this.child,
  }) : super(key: key);

  final Decoration? decoration;
  final Function()? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      alignment: Alignment.center,
      decoration: decoration ?? blueButtonDecoration,
      child: TextButton(
        onPressed: onPressed,
        child: SizedBox.expand(
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
