import 'package:flutter/material.dart';

import 'package:login_ui/task4/consts.dart';
import 'package:login_ui/task4/custom_button.dart';
import 'package:login_ui/task4/custom_textfield.dart';
import 'package:login_ui/task4/custom_checkbox.dart';
import 'package:login_ui/task4/validation_functions.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final _termKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    String? password;

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Stack(fit: StackFit.expand, children: [
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 70, right: 80, bottom: 15),
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
                      CustomTextField(
                        title: 'Email',
                        prefixIcon: const ImageIcon(
                          AssetImage('images/icons/person.png'),
                          color: defaultIconColor,
                        ),
                        validator: (value) {
                          if (!isEmail(value)) {
                            return 'Please enter a valid email!';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        title: 'Password',
                        prefixIcon: const ImageIcon(
                          AssetImage('images/icons/lock-open.png'),
                          color: defaultIconColor,
                        ),
                        hasEyeIcon: true,
                        onChange: (value) {
                          password = value;
                        },
                        validator: (value) {
                          if (!isValidPassword(value)) {
                            return 'Password must be at least 8 characters long!';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        prefixIcon: const ImageIcon(
                          AssetImage('images/icons/lock-open.png'),
                          color: defaultIconColor,
                        ),
                        hasEyeIcon: true,
                        hintText: 'Conform Password',
                        validator: (value) {
                          if (password == null || value != password) {
                            return "Passwords doesn't match";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30),
                      const CustomCheckBox(
                          title: Text(
                              'Yes, I want to receive promotional emails',
                              style: normalTextStyle)),
                      CustomCheckBox(
                        key: _termKey,
                        title: RichText(
                          text: const TextSpan(
                              style: normalTextStyle,
                              text: 'I agree with the ',
                              children: [
                                TextSpan(
                                    text: 'Terms and Condition',
                                    style: textButtonStyle),
                                TextSpan(
                                    text: ' and the ', style: normalTextStyle),
                                TextSpan(
                                    text: 'Privacy Policy',
                                    style: textButtonStyle),
                              ]),
                        ),
                        validator: (value) => (value == false)
                            ? 'You must agree to Terms and Conditions.'
                            : null,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 90, right: 90, top: 14),
                      child: CustomButton(
                        child: const Text('Sign up', style: inButtonTextStyle),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        'Sending data for authentication.')));
                          }
                        },
                      ),
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
                              onPressed: () {
                                Navigator.pushNamed(context, 'signIn');
                              },
                              child: const Text('Sign in here',
                                  style: textButtonStyle)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ]),
    );
  }
}
