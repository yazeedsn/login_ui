import 'package:flutter/material.dart';

import 'package:login_ui/task4/consts.dart';
import 'package:login_ui/task4/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Welcome to APP', style: titleTextStyle),
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                            "Fewer meetings, less internal email, all your tools integrated.",
                            textAlign: TextAlign.center,
                            style: subtitleTextStyle),
                      )
                    ],
                  ),
                ),
                Expanded(flex: 2, child: Image.asset('images/welcome.png')),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        CustomButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, 'signUp'),
                            child: const Text('Sign up',
                                style: inButtonTextStyle)),
                        const SizedBox(height: 18),
                        CustomButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, 'signIn'),
                            decoration: whiteButtonDecoration,
                            child: Text('Sign in',
                                style:
                                    inButtonTextStyle.copyWith(color: black))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
