import 'package:flutter/material.dart';

import 'package:login_ui/task4/consts.dart';
import 'package:login_ui/task4/custom_button.dart';
import 'package:login_ui/task4/custom_textfield.dart';
import 'package:login_ui/task4/custom_checkbox.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Stack(fit: StackFit.expand, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 70, right: 80, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(' Sign up to chat.',
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
              flex: 8,
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CustomTextField(
                      title: 'Email',
                      prefixIcon: ImageIcon(
                        AssetImage('images/icons/person.png'),
                        color: defaultIconColor,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const CustomTextField(
                      title: 'Password',
                      prefixIcon: ImageIcon(
                        AssetImage('images/icons/lock-open.png'),
                        color: defaultIconColor,
                      ),
                      hasEyeIcon: true,
                    ),
                    const SizedBox(height: 12),
                    const CustomTextField(
                      prefixIcon: ImageIcon(
                        AssetImage('images/icons/lock-open.png'),
                        color: defaultIconColor,
                      ),
                      hasEyeIcon: true,
                      hintText: 'Conform Password',
                    ),
                    const SizedBox(height: 30),
                    const CustomCheckBox(
                        title: Text('Yes, I want to receive promotional emails',
                            style: normalTextStyle)),
                    CustomCheckBox(
                        title: RichText(
                      text: TextSpan(
                          style: normalTextStyle,
                          text: 'I agree with the ',
                          children: [
                            TextSpan(
                                text: 'Terms and Condition',
                                style: textButtonStyle),
                            const TextSpan(
                                text: ' and the ', style: normalTextStyle),
                            TextSpan(
                                text: 'Privacy Policy', style: textButtonStyle),
                          ]),
                    )),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 90, right: 90, top: 14),
                    child: CustomButton(
                        child: Text('Sign up', style: inButtonTextStyle)),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: normalTextStyle,
                      ),
                      Flexible(
                        child: TextButton(
                            onPressed: () {},
                            child:
                                Text('Sign in here', style: textButtonStyle)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ]),
    );
  }
}
