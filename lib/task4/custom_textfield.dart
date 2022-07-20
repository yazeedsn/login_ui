import 'package:flutter/material.dart';
import 'package:login_ui/task4/consts.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {Key? key,
      this.title,
      this.prefixIcon,
      this.hasEyeIcon = false,
      this.hintText,
      this.onChange})
      : super(key: key);

  final String? title;
  final String? hintText;
  final Widget? prefixIcon;
  final bool hasEyeIcon;
  final Function(String)? onChange;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool hideText = false;
  Color eyeColor = Colors.grey;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    hideText = widget.hasEyeIcon;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title ?? '',
          style: subtitleTextStyle.copyWith(fontSize: 12),
        ),
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            TextField(
              onChanged: widget.onChange,
              obscureText: hideText,
              style: subtitleTextStyle.copyWith(color: black, fontSize: 17),
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 30, right: 8),
                  suffixIcon: (widget.hasEyeIcon)
                      ? IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            setState(() {
                              hideText = !hideText;
                            });
                          },
                          icon: ImageIcon(
                            (hideText)
                                ? const AssetImage(
                                    'images/icons/eye-crossed.png')
                                : const AssetImage('images/icons/e.png'),
                          ),
                        )
                      : null,
                  suffixIconConstraints:
                      const BoxConstraints(minWidth: 25, maxHeight: 20),
                  hintText: widget.hintText,
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE4E7F1)))),
            ),
            widget.prefixIcon ?? Container(),
          ],
        ),
      ],
    );
  }
}
