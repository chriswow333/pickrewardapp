
import 'dart:ui';

import 'package:flutter/material.dart';

enum BankColor {
  cathay,
  taishin,
}

extension BankColorExtension on BankColor {

  Color get color {
    switch (this) {
      case BankColor.cathay:
        return Color(0xFF70A464);
      case BankColor.taishin:
        return Color(0xFFE57478);
    }

  }

  static Color getColor(String id) {
    switch (id) {
      case "8b061786c55a4307a3a9ee40ff92e24c":
        return BankColor.cathay.color;
      case "382f627b5a1048f8a8643a9dd2da1ba7":
        return BankColor.taishin.color;
      default:
        return Colors.white; // Return default color if id is not found
    }
  }


}