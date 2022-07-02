import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final List<BoxShadow> boxShadow;

  const RoundedContainer(
      {Key? key,
      required this.child,
      this.color = Colors.white,
      this.margin = const EdgeInsets.symmetric(horizontal: 16),
      this.padding = const EdgeInsets.symmetric(horizontal: 10),
      this.boxShadow = const []})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(13),
          boxShadow: boxShadow),
      child: child,
    );
  }
}
