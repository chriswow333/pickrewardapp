


import 'package:flutter/material.dart';

class Palette { 

  static const MaterialColor kToRed = const MaterialColor( 
    0xFF0052D4, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    const <int, Color>{ 
      // 50: const Color(0xFFFFFFFF ),//10% 
      100: const Color(0xFFE15A5A),//20% 
      // 200: const Color(0xFF74A4F1),//30% 
      // 300: const Color(0xFF6598E9),//40% 
      // 400: const Color(0xFF578CE2),//50% 
      // 500: const Color(0xFF4A7FD4),//60% 
      600: const Color(0xFFF00303),//70% 
      // 700: const Color(0xFF1A59BE),//80% 
      // 800: const Color(0xFF184791),//90% 
      // 900: const Color(0xFF0A3E92),//100% 
    }, 
  );

static const MaterialColor kToOrange = const MaterialColor( 
    0xFF0052D4, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    const <int, Color>{ 
      50: const Color(0xFFFFFFFF ),//10% 
      // 100: const Color(0xFF91B9FA),//20% 
      // 200: const Color(0xFF74A4F1),//30% 
      300: const Color(0xFFFFAB43),//40% 
      400: const Color(0xFFFA9C29),//50% 
      500: const Color(0xFFFE9B21),//60% 
      600: const Color(0xFFF08503),//70% 
      700: const Color(0xFFE37D01),//80% 
      // 800: const Color(0xFF184791),//90% 
      // 900: const Color(0xFF0A3E92),//100% 
    }, 
  );

  static const MaterialColor kToBlue = const MaterialColor( 
    0xFF0052D4, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    const <int, Color>{ 
      50: const Color(0xFFFFFFFF ),//10% 
      100: const Color(0xFF91B9FA),//20% 
      200: const Color(0xFF74A4F1),//30% 
      300: const Color(0xFF6598E9),//40% 
      400: const Color(0xFF578CE2),//50% 
      500: const Color(0xFF4A7FD4),//60% 
      600: const Color(0xFF0052D4),//70% 
      700: const Color(0xFF1A59BE),//80% 
      800: const Color(0xFF184791),//90% 
      900: const Color(0xFF0A3E92),//100% 
    }, 
  ); 


  static const MaterialColor kToBlack = const MaterialColor( 
    0x00373737, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    const <int, Color>{ 
      50: const Color(0xFFB7B7B7 ),//10% 
      100: const Color(0xFF989898),//20% 
      200: const Color(0xFF797979),//30% 
      300: const Color(0xFF5D5D5D),//40% 
      400: const Color(0xFF484848),//50% 
      500: const Color(0xFF373737),//60% 
      600: const Color(0xFF252525),//70% 
      700: const Color(0xFF1C1C1C),//80% 
      800: const Color(0xFF101010),//90% 
      900: const Color(0xFF000000),//100% 
    }, 
  ); 
}