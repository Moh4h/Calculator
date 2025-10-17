import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData myLight = ThemeData.light().copyWith(
    dividerTheme: DividerThemeData(
      color: Colors.black,
      thickness: 2,
      space: 24
    ),
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
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white
      ,foregroundColor: Colors.black,
     shape: ContinuousRectangleBorder(),
       side: BorderSide(style: BorderStyle.solid, width: 2,color: Colors.black),
    ))
  );

  static ThemeData myDark = ThemeData.dark().copyWith(
    dividerTheme: DividerThemeData(
      color: Colors.white,
      thickness: 2,
      space: 24
    ),
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
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white
      ,shape: ContinuousRectangleBorder(),
       side: BorderSide(style: BorderStyle.solid, width: 2,color: Colors.white),
    ))
  );
}
