import 'package:flutter/material.dart';

const Color black = Color(0xFF1A1A1A);
const Color darkBlue = Color(0xFF0081F6);
const Color lightBlue = Color(0xFF44A6FF);
const Color iconColor = Color(0xFFCBCCD0);

const titleTextStyle = TextStyle(
    color: black,
    fontSize: 28,
    fontFamily: 'SFProText',
    fontWeight: FontWeight.bold);

const normalTextStyle = TextStyle(
    color: black,
    fontSize: 14,
    fontFamily: 'SFProText',
    fontWeight: FontWeight.normal);

const inButtonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontFamily: 'SFProText',
    fontWeight: FontWeight.w400);

final textButtonStyle = normalTextStyle.copyWith(color: darkBlue);

final subtitleTextStyle = TextStyle(
    color: black.withOpacity(0.7),
    fontSize: 14,
    fontFamily: 'SFProText',
    fontWeight: FontWeight.normal);

final blueButtonDecoration = BoxDecoration(
    gradient: const LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        lightBlue,
        darkBlue,
      ],
    ),
    boxShadow: [
      BoxShadow(
        color: lightBlue.withOpacity(0.2),
        blurRadius: 10,
        offset: const Offset(0, 10),
      ),
    ],
    borderRadius: BorderRadius.circular(100));

final whiteButtonDecoration = BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: const Color(0xFF8E8E8E).withOpacity(0.24),
        blurRadius: 30,
        offset: const Offset(0, 5),
      ),
    ],
    borderRadius: BorderRadius.circular(100));
