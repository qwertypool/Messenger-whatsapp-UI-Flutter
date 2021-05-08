import 'package:chat_page/AppColorCodes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: pPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: pContentColorLightTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: pContentColorLightTheme),
    colorScheme: ColorScheme.light(
      primary: pPrimaryColor,
      secondary: pSecondaryColor,
      error: pErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: pContentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: pContentColorLightTheme.withOpacity(0.42),
      selectedIconTheme: IconThemeData(color: pPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: pPrimaryColor,
    scaffoldBackgroundColor: pContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: pContentColorDarkTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: pContentColorDarkTheme),
    colorScheme: ColorScheme.dark().copyWith(
      primary: pPrimaryColor,
      secondary: pSecondaryColor,
      error: pErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: pContentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: pContentColorDarkTheme.withOpacity(0.42),
      selectedIconTheme: IconThemeData(color: pPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

final appBarTheme = AppBarTheme(color:pPrimaryColor, centerTitle: false, elevation: 0);