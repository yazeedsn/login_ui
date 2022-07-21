import 'package:flutter/material.dart';
import 'package:login_ui/task4/consts.dart';
import 'package:login_ui/task4/custom_button.dart';
import 'package:login_ui/task4/custom_textfield.dart';
import 'package:login_ui/task4/screens/signup_screen.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 80, right: 80, bottom: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Sign in to chat.',
                          style: titleTextStyle.copyWith(fontSize: 24)),
                      const SizedBox(height: 20),
                      Text(
                          "Remember to get up & stretch once in a while - your friends at chat.",
                          textAlign: TextAlign.center,
                          style: subtitleTextStyle.copyWith(fontSize: 12))
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        CustomTextField(
                          title: 'Email',
                          prefixIcon: ImageIcon(
                            AssetImage('images/icons/person.png'),
                            color: defaultIconColor,
                          ),
                        ),
                        SizedBox(height: 12),
                        CustomTextField(
                          title: 'Password',
                          prefixIcon: ImageIcon(
                            AssetImage('images/icons/lock-open.png'),
                            color: defaultIconColor,
                          ),
                          hasEyeIcon: true,
                        ),
                      ]),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 90, right: 90),
                      child: CustomButton(
                        child: Text('Sign in', style: inButtonTextStyle),
                      ),
                    ),
                    const SizedBox(height: 25),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Forgot Password?',
                            style: textButtonStyle)),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: normalTextStyle,
                        ),
                        Flexible(
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'signUp');
                              },
                              child: const Text('Sign un here',
                                  style: textButtonStyle)),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
