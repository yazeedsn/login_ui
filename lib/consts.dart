import 'package:flutter/material.dart';

const hintTextStyle = TextStyle(
  color: Color(0x881D2226),
  fontFamily: 'Roboto',
  fontWeight: FontWeight.normal,
  fontSize: 14,
);

const buttonTextStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

//style to remove the default padding around Text Buttons
final textButtonStyle = TextButton.styleFrom(
  minimumSize: Size.zero,
  padding: EdgeInsets.zero,
  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
);
