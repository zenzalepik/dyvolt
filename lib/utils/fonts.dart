import 'package:flutter/material.dart';

class TextStyles {

  static const TextStyle textAppBar = TextStyle(
    fontFamily: 'Inter',
    fontSize: 20,
    fontWeight: FontWeight.w500,
    height: 1.6, // line-height
    letterSpacing: 0,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    color: Colors.black,
  );

  static const TextStyle button = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
