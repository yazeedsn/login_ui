import 'package:flutter/material.dart';
import 'package:login_ui/task4/screens/signin_screen.dart';
import 'package:login_ui/task4/screens/signup_screen.dart';
import 'package:login_ui/task4/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        'signIn': (context) => const SigninScreen(),
        'signUp': (context) => SignupScreen(),
      },
    );
  }
}
