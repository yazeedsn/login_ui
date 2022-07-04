import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  final TextStyle headTextStyle = const TextStyle(
      color: Color(0xFF1D2226),
      fontSize: 28,
      fontFamily: 'Quicksand',
      fontWeight: FontWeight.bold);

  final TextStyle subTextStyle = const TextStyle(
      color: Color(0x991D2226),
      fontSize: 18,
      fontFamily: 'Quicksand',
      fontWeight: FontWeight.normal);

  final TextStyle buttonTextStyle = const TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontFamily: 'Quicksand',
      fontWeight: FontWeight.bold);

  final TextStyle hintTextStyle = const TextStyle(
    color: Color(0x881D2226),
    fontSize: 14,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.normal,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Welcome back!', style: headTextStyle),
                const SizedBox(height: 12),
                Text(
                  'Please login to your account.',
                  style: subTextStyle,
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Email Address', hintStyle: hintTextStyle),
                ),
                const SizedBox(height: 15),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot?',
                        textAlign: TextAlign.start,
                        style: hintTextStyle.copyWith(
                            color: const Color(0xFF0052FF)),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: hintTextStyle,
                          enabledBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0x88707070)))),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    width: double.infinity,
                    color: const Color(0xFFAC49D8),
                    child: Center(child: Text('LOGIN', style: buttonTextStyle)),
                  ),
                ),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: null,
                  child: Text(
                    'REGISTER NOW',
                    style: headTextStyle.copyWith(fontSize: 14),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
