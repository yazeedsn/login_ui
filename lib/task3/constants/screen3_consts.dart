import 'package:flutter/material.dart';

const Color green = Color(0xFF46E03C);

const TextStyle titleStyle = TextStyle(
    color: green,
    fontSize: 35,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold);

const TextStyle subTextStyle = TextStyle(
    color: Color(0x881A1A1A),
    fontSize: 16,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal);

final InputDecoration textFieldDecoration = InputDecoration(
  filled: true,
  fillColor: const Color(0xFFF7F7F7),
  isDense: true,
  hintText: 'Email Address',
  hintStyle: TextStyle(
      color: Colors.black.withOpacity(0.3),
      fontFamily: 'Poppins',
      fontSize: 14),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: green, width: 1),
    borderRadius: BorderRadius.circular(30),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(
      color: green,
      width: 1,
    ),
    borderRadius: BorderRadius.circular(30),
  ),
);

const TextStyle buttonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 14,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);

ButtonStyle roundedButtonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(const Color(0xFF537BD0)),
  shape: MaterialStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
  minimumSize: MaterialStateProperty.all(const Size.fromHeight(48)),
);
