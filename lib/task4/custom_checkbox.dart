import 'package:flutter/material.dart';

import 'package:login_ui/task4/consts.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    Key? key,
    required this.title,
  }) : super(key: key);

  final Widget title;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.end,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Checkbox(
            value: checked,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
            side: const BorderSide(width: 1, color: iconColor),
            onChanged: (value) {
              setState(() {
                checked = value ?? false;
              });
            }),
        Flexible(child: widget.title),
      ],
    );
  }
}
