import 'package:flutter/material.dart';

class AppTheme {
  static TextStyle get fontBold => const TextStyle(
        fontFamily: "Sen",
        fontWeight: FontWeight.bold,
      );

  static TextStyle get fontExtraBold => const TextStyle(
        fontFamily: "Sen",
        fontWeight: FontWeight.w900,
      );

  static TextStyle fontSize(size) => TextStyle(
        fontFamily: "Sen",
        fontSize: size,
      );
}
