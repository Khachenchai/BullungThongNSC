import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySetting {

  //General
  static String appName = 'BullungThong';
  static String credit = 'APG Group';
  static String licenseName = 'Khachenchai Jaikla';

  //Route
  static String routeHomePage = '/homepage';
  static String routeAuthen = '/authen';
  static String routeTermOfService = '/termofservice';

  //Color
  static Color primary = Color(0xffc7ed8e);
  static Color dark = Color(0xff95ba5f);
  static Color light = Color(0xfffbffbf);
  
  //Image
  static String logoImg = 'assets/images/logo.png';
  static String callImg = 'assets/images/call.png';
  static String facebookImg = 'assets/images/facebook.png';
  static String googleImg = 'assets/images/google.png';

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