import 'package:flutter/material.dart';

import 'rounded_container.dart';
import 'consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/bg.png',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Center(
                child: Text(
                  'Log In',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              RoundedContainer(
                padding: const EdgeInsets.all(11),
                child: TextField(
                  decoration: buildInputDecoration(hintText: 'Email'),
                ),
              ),
              const SizedBox(height: 8),
              RoundedContainer(
                padding: const EdgeInsets.all(11),
                child: TextField(
                  obscureText: true,
                  decoration: buildInputDecoration(hintText: 'Password'),
                ),
              ),
              const SizedBox(height: 9),
              RoundedContainer(
                color: const Color(0xFF00818A),
                padding: const EdgeInsets.all(16),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFF00818A),
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )
                ],
                child: TextButton(
                    onPressed: null,
                    style: textButtonStyle,
                    child: const Text(
                      'LOGIN',
                      style: buttonTextStyle,
                    )),
              ),
              const SizedBox(height: 9),
              TextButton(
                onPressed: null,
                style: textButtonStyle,
                child: const Text(
                  'Forget password?',
                  style: TextStyle(
                    color: Color(0x88FFFFFF),
                    fontFamily: 'Roboto',
                    fontSize: 7,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: null,
                style: textButtonStyle,
                child: const Text(
                  'Register Here',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  InputDecoration buildInputDecoration({String? hintText}) {
    return InputDecoration(
        contentPadding: EdgeInsets.zero,
        isDense: true,
        hintText: hintText,
        border: InputBorder.none,
        hintStyle: hintTextStyle);
  }
}
