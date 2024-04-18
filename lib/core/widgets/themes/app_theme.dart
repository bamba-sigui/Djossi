import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class Appthemes {
// c'est notre objectif principal
// appliquons le thème clair et sombre de notre application
// Ajoutons maintenant le thème sombre sur notre application
  static ThemeData lightThemeData(BuildContext context) {
    return ThemeData.light().copyWith(
      primaryColor: AppColor.kPrimaryColor,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: appBarTheme,
      iconTheme: const IconThemeData(color: AppColor.kPrimaryColor),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: AppColor.kPrimaryColor),
      colorScheme: const ColorScheme.light(
        primary: AppColor.kPrimaryColor,
        secondary: AppColor.kSecondaryColor,
        error: AppColor.kRed,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: AppColor.kPrimaryColor.withOpacity(0.7),
        selectedIconTheme: const IconThemeData(color: AppColor.kPrimaryColor),
        showUnselectedLabels: true,
      ),
    );
  }

  static ThemeData darkThemeData(BuildContext context) {
// Par défaut Flutter nous fournit un thème clair et sombre
// Nous le modifions simplement comme notre besoin
    return ThemeData.dark().copyWith(
      primaryColor: AppColor.kPrimaryColor,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: appBarTheme,
      iconTheme: const IconThemeData(color: AppColor.kPrimaryColor),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: AppColor.kPrimaryColor),
      colorScheme: const ColorScheme.light(
        primary: AppColor.kPrimaryColor,
        secondary: AppColor.kSecondaryColor,
        error: AppColor.kRed,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: AppColor.kPrimaryColor.withOpacity(0.7),
        selectedIconTheme: const IconThemeData(color: AppColor.kPrimaryColor),
        showUnselectedLabels: true,
      ),
    );
  }

  static const appBarTheme = AppBarTheme(centerTitle: true, elevation: 0);
}
