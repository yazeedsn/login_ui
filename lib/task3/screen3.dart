import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:login_ui/task3/constants/screen3_consts.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  final TextEditingController emailFieldController = TextEditingController();
  bool emptyEmail = true;

  @override
  void initState() {
    super.initState();
    emailFieldController.addListener(() {
      if (emailFieldController.text.isNotEmpty) {
        emptyEmail = false;
      } else {
        emptyEmail = true;
      }
      setState(() {
        emptyEmail;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(color: Colors.white),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Get it Done.',
                  style: titleStyle,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Sign in or Create an account',
                  style: subTextStyle,
                ),
                const SizedBox(height: 26),
                TextField(
                  controller: emailFieldController,
                  decoration: textFieldDecoration.copyWith(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 18),
                    suffixIcon: IconButton(
                      onPressed: () {
                        emailFieldController.clear();
                      },
                      icon: Icon(
                        FontAwesomeIcons.solidCircleXmark,
                        color: const Color(0xFFCEC7C7),
                        size: (emptyEmail) ? 0 : 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF46E03C)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                    minimumSize:
                        MaterialStateProperty.all(const Size.fromHeight(48)),
                  ),
                  child: const Text(
                    'Continue',
                    style: buttonTextStyle,
                  ),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    'or',
                    style: subTextStyle,
                  ),
                ),
                const SizedBox(height: 11),
                TextButton(
                  onPressed: () {},
                  style: roundedButtonStyle,
                  child: const Text(
                    'Continue with Facebook',
                    style: buttonTextStyle,
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
