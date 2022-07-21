import 'package:flutter/material.dart';

import 'package:login_ui/task4/consts.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox(
      {Key? key, required this.title, this.formfieldKey, this.validator})
      : super(key: key);

  final Widget title;
  final GlobalKey<FormFieldState>? formfieldKey;
  final String? Function(bool?)? validator;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return FormField(
      key: widget.formfieldKey,
      initialValue: _checked,
      builder: (FormFieldState<bool> field) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          textBaseline: TextBaseline.alphabetic,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Checkbox(
                value: _checked,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
                side: const BorderSide(width: 1, color: defaultIconColor),
                onChanged: (value) {
                  setState(() {
                    _checked = value ?? false;
                  });
                }),
            Flexible(child: widget.title),
          ],
        );
      },
      validator: widget.validator,
    );
  }
}
