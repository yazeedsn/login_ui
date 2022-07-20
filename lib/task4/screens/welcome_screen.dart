import 'package:flutter/material.dart';

import 'package:login_ui/task4/consts.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 62),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextButton(
                        onPressed: null,
                        child: Container(
                          height: 55,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(horizontal: 30),
                          decoration: blueButtonDecoration,
                          child: const Text(
                            'Sign up',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          height: 55,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(horizontal: 30),
                          decoration: whiteButtonDecoration,
                          child: const Text(
                            'Sign in',
                          ),
                        ),
                      ),
                    ],
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
