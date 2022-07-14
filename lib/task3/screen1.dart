import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:login_ui/task3/constants/screen1_consts.dart';
import 'package:login_ui/task3/bar_button.dart';
import 'package:login_ui/task3/input_page.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  PageType type = PageType.login;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(color: Colors.white),
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(125, 50, 125, 14),
                          child: Image(
                            image: AssetImage('images/logo_vk.png'),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Welcome',
                            style: titleStyle,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: BarButton(
                              text: 'Login',
                              isActive: type == PageType.login,
                              onPressed: () {
                                setState(() {
                                  type = PageType.login;
                                });
                              }),
                        ),
                        Expanded(
                          child: BarButton(
                              text: 'Signup',
                              isActive: type == PageType.signup,
                              onPressed: () {
                                setState(() {
                                  type = PageType.signup;
                                });
                              }),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(flex: 3, child: InputPage(type: type)),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const Divider(thickness: 1, indent: 32, endIndent: 32),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30, top: 20),
                      child: ShaderMask(
                        shaderCallback: (bounds) =>
                            blueToRedGradient.createShader(bounds),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.white,
                            ),
                            SizedBox(width: 15),
                            Icon(
                              FontAwesomeIcons.twitter,
                              color: Colors.white,
                            ),
                            SizedBox(width: 15),
                            Icon(CupertinoIcons.envelope_fill,
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
