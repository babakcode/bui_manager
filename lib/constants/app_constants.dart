import 'package:flutter/material.dart';

class AppConstants {
  static Color get textColor => const Color(0xff5f687d);


  static MaterialColor whiteColor = const MaterialColor(
     0xFFFFFFFF,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xB3FFFFFF),
      200: Color(0x4DFFFFFF),
      300: Color(0x3DFFFFFF),
      400: Color(0x1FFFFFFF),
      500: Color(0x1AFFFFFF),
       600: Color(0xFF033357),
       700: Color(0xFF032742),
       800: Color(0xFF031D31),
       900: Color(0xFF031421),
    },
  );

  static const MaterialColor blackColor =  MaterialColor(
     0xFF000000,
    <int, Color>{
      50: Color(0x1F000000),
      100: Color(0x42000000),
      200: Color(0x61000000),
      300: Color(0x73000000),
      400: Color(0x8A000000),
      500: Color(0xFF000000),
       600: Color(0xFF033357),
       700: Color(0xFF032742),
       800: Color(0xFF031D31),
       900: Color(0xFF031421),
    },
  );



  static const MaterialColor primarySwatch = MaterialColor(
     0xFF01528F,
     <int, Color>{
        50: Color(0xFF10b2f6),
        100: Color(0xFF0087C4),
        200: Color(0xFF007AB0),
        300: Color(0xFF0060A8),
        400: Color(0xFF01528F),
        500: Color(0xFF024373),
        600: Color(0xFF033357),
        700: Color(0xFF032742),
        800: Color(0xFF031D31),
        900: Color(0xFF031421),
     },
  );
}
