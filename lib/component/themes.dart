import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData myLight = ThemeData.light().copyWith(
    textTheme: GoogleFonts.cairoTextTheme( // 👈 استخدم الخط الذي تريده
      ThemeData.light().textTheme,
    ),
    primaryTextTheme: GoogleFonts.cairoTextTheme(),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
  );

  static ThemeData myDark = ThemeData.dark().copyWith(
    textTheme: GoogleFonts.cairoTextTheme( // 👈 نفس الشيء للثيم الداكن
      ThemeData.dark().textTheme,
    ),
    primaryTextTheme: GoogleFonts.cairoTextTheme(),
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
  );
}
