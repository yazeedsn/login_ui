import 'package:flutter/material.dart';

import 'package:login_ui/task4/consts.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({Key? key, required this.title, this.onChange})
      : super(key: key);

  final Widget title;
  final void Function(bool)? onChange;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Baseline(
            baseline: 36,
            baselineType: TextBaseline.alphabetic,
            child: Checkbox(
                visualDensity: VisualDensity.standard,
                value: _checked,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
                side: const BorderSide(width: 1, color: defaultIconColor),
                onChanged: (value) {
                  setState(() {
                    _checked = value ?? false;
                  });
                  if (widget.onChange != null) {
                    widget.onChange!(value ?? false);
                  }
                }),
          ),
          Flexible(child: widget.title),
        ],
      ),
    );
  }
}
