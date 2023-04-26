import 'package:flutter/material.dart';

class Space {
  static Widget? x(double no) => SizedBox(width: no);
  static Widget? y(double no) => SizedBox(height: no);
  static Widget? x1;
  static Widget? xm;
  static void init() {
    x1 = const SizedBox(width: 50);
    xm = const Expanded(child: SizedBox(width: double.infinity));
  }
}
