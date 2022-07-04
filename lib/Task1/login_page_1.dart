import 'package:flutter/material.dart';

import 'rounded_container.dart';
import 'consts.dart';

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
                      fontSize: 30,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 34),
              RoundedContainer(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  decoration: buildInputDecoration(hintText: 'Email'),
                ),
              ),
              const SizedBox(height: 14),
              RoundedContainer(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  obscureText: true,
                  decoration: buildInputDecoration(hintText: 'Password'),
                ),
              ),
              const SizedBox(height: 16),
              RoundedContainer(
                color: const Color(0xFF00818A),
                padding: const EdgeInsets.all(12),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFF00818A),
                    blurRadius: 12,
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
              const SizedBox(height: 18),
              TextButton(
                onPressed: null,
                style: textButtonStyle,
                child: const Text(
                  'Forget password?',
                  style: TextStyle(
                    color: Color(0x88FFFFFF),
                    fontFamily: 'Roboto',
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 48),
              TextButton(
                onPressed: null,
                style: textButtonStyle,
                child: const Text(
                  'Register Here',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 16,
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
