import 'package:flutter/material.dart';
import 'package:login_ui/Task1/rounded_container.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  final TextStyle headTextStyle = const TextStyle(
      color: Colors.white,
      fontSize: 40,
      fontFamily: 'Quicksand',
      fontWeight: FontWeight.bold);

  final TextStyle subTextStyle = const TextStyle(
      color: Color(0x99FFFFFF),
      fontSize: 14,
      fontFamily: 'Quicksand',
      fontWeight: FontWeight.normal);

  final TextStyle buttonTextStyle = const TextStyle(
      color: Color(0xFF1D2226),
      fontSize: 20,
      fontFamily: 'Quicksand',
      fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/bg_task2_screen1.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Excited?!',
                  style: headTextStyle,
                ),
                const SizedBox(height: 20),
                Text(
                  'You Should be!!',
                  style: headTextStyle.copyWith(fontSize: 30),
                ),
                const SizedBox(height: 32),
                Text(
                  'Sign In if you already have an account with us',
                  style: subTextStyle,
                ),
                const SizedBox(height: 12),
                buildButton('Sign In'),
                const SizedBox(height: 26),
                Text(
                  'Or sign up if you are new !',
                  style: subTextStyle,
                ),
                const SizedBox(height: 12),
                buildButton('Sign Up'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  RoundedContainer buildButton(String text) {
    return RoundedContainer(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.all(2),
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: buttonTextStyle,
          )),
    );
  }
}
