import 'package:flutter/material.dart';

class CustomColor {
  static MaterialColor primary = MaterialColor(
    Colors.amber.shade900.value,
    <int, Color>{
      50: Colors.amber.shade50,
      100: Colors.amber.shade100,
      200: Colors.amber.shade200,
      300: Colors.amber.shade300,
      400: Colors.amber.shade400,
      500: Colors.amber.shade500,
      600: Colors.amber.shade600,
      700: Colors.amber.shade700,
      800: Colors.amber.shade800,
      900: Colors.amber.shade900,
    },
  );
}
