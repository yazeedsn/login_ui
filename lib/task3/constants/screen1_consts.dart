import 'package:flutter/material.dart';

const Color blue = Color(0xFF1F54C3);
const Color black = Color(0xFF1D2226);

const TextStyle titleStyle = TextStyle(
  fontSize: 34,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);

final InputDecoration textFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  isDense: true,
  hintStyle: TextStyle(
    color: const Color(0xFF1D2226).withOpacity(0.5),
    fontSize: 14,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: BorderSide.none,
  ),
);

final BoxDecoration shadowDecoration = BoxDecoration(boxShadow: [
  BoxShadow(
    color: blue.withOpacity(0.15),
    blurRadius: 12,
    offset: const Offset(0, 6),
  ),
]);

const TextStyle tabTextStyle = TextStyle(
    color: blue,
    fontSize: 16,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold);

final ButtonStyle buttonStyle = ButtonStyle(
    padding: MaterialStateProperty.all(const EdgeInsets.all(16)),
    backgroundColor: MaterialStateProperty.all(blue));

const TextStyle buttonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontFamily: 'Poppins',
);

const TextStyle textButtonStyle =
    TextStyle(color: blue, fontSize: 14, fontFamily: 'Poppins');

const LinearGradient blueToRedGradient = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    Color(0xFF1D55C5),
    Color(0xFFE93354),
  ],
);
