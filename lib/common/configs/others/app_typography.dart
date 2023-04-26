import 'package:flutter/material.dart';

class AppText {
  static TextStyle? h1;
  static TextStyle? h1b;
  static TextStyle? h2;
  static TextStyle? h3;

  static init() {
    const baseStyle = TextStyle(fontFamily: 'Poppins');
    h1 = baseStyle.copyWith(fontSize: 22);
    h1b = h1!.copyWith(fontWeight: FontWeight.w600);
    h2 = baseStyle.copyWith(fontWeight: FontWeight.w400);
    h3 = baseStyle.copyWith(fontWeight: FontWeight.w100);
  }
}
