import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySetting {

  //General
  static String appName = 'BullungThong';
  static String credit = 'APG Group';

  //Color
  static Color primary = Color(0xffc7ed8e);
  static Color dark = Color(0xff95ba5f);
  static Color light = Color(0xfffbffbf);
  
  //Image
  static String logoImg = 'assets/images/logo.png';

  //TextStyle
  TextStyle customStyle(double size, Color color, TextDecoration decoration) => TextStyle(
    fontSize: size,
    color: color,
    decoration: decoration
  );

  TextStyle customKanitStyle(double size, Color color, TextDecoration decoration) => GoogleFonts.kanit(
    fontSize: size,
    color: color,
    decoration: decoration
  );

}