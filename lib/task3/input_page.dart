import 'package:flutter/material.dart';
import 'package:login_ui/task3/constants/screen1_consts.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key, required this.type}) : super(key: key);

  final PageType type;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, right: 32.0, top: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildTextField('Email Address'),
          const SizedBox(height: 16),
          buildTextField('Password',
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
                icon: const ImageIcon(
                  AssetImage('images/icons/eye.png'),
                  size: 20,
                  color: Color(0xFFCCCCCC),
                ),
              ),
              obscureText: _obscurePassword),
          const SizedBox(height: 18),
          TextButton(
            onPressed: null,
            style: buttonStyle,
            child: Text(
              (widget.type == PageType.login) ? 'LOGIN' : 'SIGN UP',
              style: buttonTextStyle,
            ),
          ),
          const SizedBox(height: 22),
          Visibility(
            visible: (widget.type == PageType.login) ? true : false,
            child: const Text(
              'Forgot Password?',
              style: textButtonStyle,
            ),
          ),
        ],
      ),
    );
  }

  Container buildTextField(String hintText,
      {Widget? icon, bool obscureText = false}) {
    return Container(
      decoration: shadowDecoration,
      child: TextField(
        obscureText: obscureText,
        decoration: (icon == null)
            ? textFieldDecoration.copyWith(hintText: hintText)
            : textFieldDecoration.copyWith(
                hintText: hintText, suffixIcon: icon),
      ),
    );
  }
}

enum PageType {
  login,
  signup,
}
