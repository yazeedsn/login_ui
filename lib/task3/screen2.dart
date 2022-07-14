import 'package:flutter/material.dart';

import 'constants/screen2_consts.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(color: Colors.black),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 85),
                        child: Image.asset(
                          'images/yoga.png',
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Divider(
                        color: Color(0xFF707070),
                        indent: 40,
                        endIndent: 40,
                      ),
                      const SizedBox(height: 26),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Text(
                          'Log in or create an account to keep your subscription in sync',
                          textAlign: TextAlign.center,
                          style:
                              textStyle.copyWith(fontWeight: FontWeight.normal),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Button(
                        text: 'Login with Facebook',
                        hasBorder: true,
                        onPressed: () {},
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Button(
                              text: 'Sign Up',
                              onPressed: () {},
                            ),
                          ),
                          Expanded(
                            child: Button(
                              text: 'Login In',
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  alignment: Alignment.bottomCenter,
                  child: Button(text: 'later', onPressed: () {}),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final Function onPressed;
  final bool hasBorder;

  const Button(
      {Key? key,
      this.text = '',
      required this.onPressed,
      this.hasBorder = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(14),
        decoration: buttonDecoration.copyWith(
            border: Border.all(
                color: Colors.white,
                style: (hasBorder) ? BorderStyle.solid : BorderStyle.none)),
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
