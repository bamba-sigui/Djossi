// ignore_for_file: annotate_overrides, overridden_fields

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppThemeMode {
  static ThemeMode get themeMode {
    return ThemeMode.light;
  }

  static AppThemeMode of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  late Color kPrimaryColor;
  late Color kSecondaryColor;
  late Color kSecondaryColor20;
  late Color kSecondaireLight;
  late Color kPrimaryGreen;
  late Color kGreen100;
  late Color kGray;
  late Color kGrayPlaceholdertext;
  late Color kYello;
  late Color kRed;
  late Color kLightRed;
  late Color kDeepRed;
  late Color kWhite;
  late Color kBlack;

  late Color primaryColor;
  late Color primary90Color;
  late Color primary80Color;
  late Color primary70Color;
  late Color noir90Color;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color primaryBtnText;
  late Color lineColor;
  late Color backgroundComponents;
  late Color grayIcon;
  late Color gray200;
  late Color gray600;
  late Color black600;
  late Color tertiary400;
  late Color textColor;
  late Color maximumBlueGreen;
  late Color plumpPurple;
  late Color platinum;
  late Color ashGray;
  late Color darkSeaGreen;
  late Color btnText;
  late Color customColor3;
  late Color customColor4;
  late Color white;
  late Color background;
  late Color button;
  late Color noColor;
  late Color neutralColors;
  late Color textfield;

  /// Pro color
  late Color kPrimaryColorPro;
  late Color kPrimaryLightColorPro;
  late Color kGreenColorPro;
  late Color kSecondaryColorPro;
  late Color kSecondaryColor20Pro;
  late Color kSecondaireLightPro;
  late Color kPrimaryGreenPro;
  late Color kGreen100Pro;
  late Color kGrayPro;
  late Color kYelloPro;
  late Color kRedPro;
  late Color kLightRedPro;
  late Color kDeepRedPro;
  late Color kWhitePro;
  late Color kBluePro;
  late Color kBlackPro;
  late Color kGreyPro;
  late Color kLightPro;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get label1Family => typography.label1Family;
  TextStyle get label1 => typography.label1;
  String get label2Family => typography.label2Family;
  TextStyle get label2 => typography.label2;
  String get label3Family => typography.label3Family;
  TextStyle get label3 => typography.label3;
  String get label4Family => typography.label4Family;
  TextStyle get label4 => typography.label4;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  String get customTextFamily => typography.customFamily;
  TextStyle get customText2 => typography.customText;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends AppThemeMode {
  @override
  late Color primaryColor = const Color(0xFF8D5CCC);
  @override
  late Color primary90Color = const Color(0xFFFAF7FD);
  @override
  late Color primary80Color = const Color(0xFFDED0F0);
  @override
  late Color primary70Color = const Color(0xFFC3AAE4);
  @override
  late Color noir90Color = const Color(0xFFE6E6E6);
  @override
  late Color secondaryColor = const Color(0xFF5CCC7C);
  @override
  late Color tertiaryColor = const Color(0xFFD0A22F);

  /// Pro Color
  late Color kPrimaryColorPro = const Color(0xFF7F4DB3);
  late Color kSecondaryColorPro = const Color(0xFFB294D1);
  late Color kSecondaryColor20Pro = const Color(0xFFB294D1).withOpacity(.2);
  late Color kSecondaireLightPro = const Color(0xFFF2EDF7);
  late Color kPrimaryGreenPro = const Color(0xFF59CC7E);
  late Color kGreen100Pro = const Color(0xFFD4F7DF);
  late Color kGrayPro = const Color(0xFF808080);
  late Color kYelloPro = const Color(0xFFFFD9A2);
  late Color kRedPro = const Color(0xFFF0778D);
  late Color kLightRedPro = const Color(0xFFFFAEAE);
  late Color kDeepRedPro = const Color(0xFFFF0000);
  late Color kWhitePro = const Color(0xFFFFFFFF);
  @override
  late Color kBlackPro = const Color(0xFF000000);

  @override
  late Color alternate = const Color(0xFFFF5963);
  @override
  late Color primaryBackground = const Color(0xFFF1F4F8);
  @override
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  @override
  late Color primaryText = const Color(0xFF101213);
  @override
  late Color secondaryText = const Color(0xFF57636C);
  @override
  late Color primaryBtnText = const Color(0xFFFFFFFF);
  @override
  late Color lineColor = const Color(0xFF22282F);
  @override
  late Color backgroundComponents = const Color(0xFF1D2428);
  @override
  late Color grayIcon = const Color(0xFF95A1AC);
  @override
  late Color gray200 = const Color(0xFFDBE2E7);
  @override
  late Color gray600 = const Color(0xFF262D34);
  @override
  late Color black600 = const Color(0xFF090F13);
  @override
  late Color tertiary400 = const Color(0xFF39D2C0);
  @override
  late Color textColor = const Color(0xFF1E2429);
  @override
  late Color maximumBlueGreen = const Color(0xFF59C3C3);
  @override
  late Color plumpPurple = const Color(0xFF52489C);
  @override
  late Color platinum = const Color(0xFFEBEBEB);
  @override
  late Color ashGray = const Color(0xFFCAD2C5);
  @override
  late Color darkSeaGreen = const Color(0xFF84A98C);
  @override
  late Color btnText = const Color(0xFFFFFFFF);
  @override
  late Color customColor3 = const Color(0xFFDF3F3F);
  @override
  late Color customColor4 = const Color(0xFF090F13);
  @override
  late Color white = const Color(0xFFFFFFFF);
  @override
  late Color background = const Color(0xFF1D2429);
  @override
  late Color button = const Color.fromARGB(255, 41, 59, 42);
  @override
  late Color noColor = const Color(0x00FFFFFF);
  @override
  late Color neutralColors = const Color(0xffa9b5cc);
  @override
  late Color textfield = const Color(0xffeaeaea);

//Particulier

  @override
  late Color kPrimaryColor = const Color(0xFF7F4DB3);
  @override
  late Color kSecondaryColor = const Color(0xFFB294D1);
  @override
  late Color kSecondaryColor20 = const Color(0xFFB294D1);
  @override
  late Color kSecondaireLight = const Color(0xFFF2EDF7);
  @override
  late Color kPrimaryGreen = const Color(0xFF59CC7E);
  @override
  late Color kGreen100 = const Color(0xFFD4F7DF);
  @override
  late Color kGray = const Color(0xFF808080);
  @override
  late Color kGrayPlaceholdertext = const Color(0xFFFFFFEE);
  @override
  late Color kYello = const Color(0xFFFFD9A2);
  @override
  late Color kLightRed = const Color(0xFFFFAEAE);
  @override
  late Color kRed = const Color(0xFFF00F0F);
  @override
  late Color kDeepRed = const Color(0xFFFF0000);
  @override
  late Color kWhite = const Color(0xFFFFFFFF);
  @override
  late Color kBlack = const Color(0xFF000000);

  /// Pro

  late Color kPrimaryLightColorPro = const Color(0xFFF2EDF7);
  late Color kGreenColorPro = const Color(0xFF59CC7E);

  late Color kBluePro = const Color(0xFF16A7F8);
  late Color kGreyPro = const Color(0xFFCACACA);
  late Color kLightPro = const Color(0xFFEAEAEA);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get label1Family;
  TextStyle get label1;
  String get label2Family;
  TextStyle get label2;
  String get label3Family;
  TextStyle get label3;
  String get label4Family;
  TextStyle get label4;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
  String get customFamily;
  TextStyle get customText;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final AppThemeMode theme;

//TITLE
  @override
  String get title1Family => 'Montserrat';
  @override
  TextStyle get title1 => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.w900,
        fontSize: 45.sp,
      );
  @override
  String get title2Family => 'Montserrat';
  @override
  TextStyle get title2 => GoogleFonts.getFont(
        'Montserrat',
        color: theme.secondaryText,
        fontWeight: FontWeight.w900,
        fontSize: 32.sp,
      );
  @override
  String get title3Family => 'Montserrat';
  @override
  TextStyle get title3 => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.w900,
        fontSize: 26.sp,
      );
//LABEL
  @override
  String get label1Family => 'Montserrat';
  @override
  TextStyle get label1 => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.w700,
        fontSize: 18.sp,
      );
  @override
  String get label2Family => 'Montserrat';
  @override
  TextStyle get label2 => GoogleFonts.getFont(
        'Montserrat',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.sp,
      );
  @override
  String get label3Family => 'Montserrat';
  @override
  TextStyle get label3 => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.w700,
        fontSize: 12.sp,
      );
  @override
  String get label4Family => 'Montserrat';
  @override
  TextStyle get label4 => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 10.sp,
      );
  @override
  String get subtitle1Family => 'Montserrat';
  @override
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.sp,
      );
  @override
  String get subtitle2Family => 'Montserrat';
  @override
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Montserrat',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.sp,
      );
  @override
  String get bodyText1Family => 'Montserrat';
  @override
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.sp,
      );
  @override
  String get bodyText2Family => 'Montserrat';
  @override
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Montserrat',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 12.sp,
      );

  @override
  TextStyle get customText => GoogleFonts.getFont(
        'Montserrat',
        color: theme.black600,
      );

  @override
  String get customFamily => 'Montserrat';
}

class DarkModeTheme extends AppThemeMode {
  @override
  late Color primaryColor = const Color(0xFF8D5CCC);
  @override
  late Color primary90Color = const Color(0xFFFAF7FD);
  @override
  late Color primary80Color = const Color(0xFFDED0F0);
  @override
  late Color primary70Color = const Color(0xFFC3AAE4);
  @override
  late Color secondaryColor = const Color(0xFF5CCC7C);
  @override
  late Color tertiaryColor = const Color(0xFFD0A22F);
  @override
  late Color alternate = const Color(0xFFFF5963);
  @override
  late Color noir90Color = const Color(0xFFE6E6E6);

  @override
  late Color primaryBackground = const Color(0xFF1A1F24);
  @override
  late Color secondaryBackground = const Color(0xFF101213);
  @override
  late Color primaryText = const Color(0xFFFFFFFF);
  @override
  late Color secondaryText = const Color(0xFF95A1AC);

  @override
  late Color primaryBtnText = const Color(0xFFFFFFFF);
  @override
  late Color lineColor = const Color(0xFFE0E3E7);
  @override
  late Color backgroundComponents = const Color(0xFF1D2428);
  @override
  late Color grayIcon = const Color(0xFF95A1AC);
  @override
  late Color gray200 = const Color(0xFFDBE2E7);
  @override
  late Color gray600 = const Color(0xFF262D34);
  @override
  late Color black600 = const Color(0xFF090F13);
  @override
  late Color tertiary400 = const Color(0xFF39D2C0);
  @override
  late Color textColor = const Color(0xFF1E2429);
  @override
  late Color maximumBlueGreen = const Color(0xFF59C3C3);
  @override
  late Color plumpPurple = const Color(0xFF52489C);
  @override
  late Color platinum = const Color(0xFFEBEBEB);
  @override
  late Color ashGray = const Color(0xFFCAD2C5);
  @override
  late Color darkSeaGreen = const Color(0xFF84A98C);
  @override
  late Color btnText = const Color(0xFFFFFFFF);
  @override
  late Color customColor3 = const Color(0xFFDF3F3F);
  @override
  late Color customColor4 = const Color(0xFF090F13);
  @override
  late Color white = const Color(0xFFFFFFFF);
  @override
  late Color background = const Color(0xFF1D2429);
  @override
  late Color button = const Color.fromARGB(255, 41, 59, 42);
  @override
  late Color noColor = const Color(0x000F1113);
  @override
  late Color neutralColors = const Color(0xffdfe4ef);
  @override
  late Color textfield = const Color(0xffeaeaea);

  //Particulier
  @override
  late Color kPrimaryColor = const Color(0xFF7F4DB3);
  @override
  late Color kSecondaryColor = const Color(0xFFB294D1);
  @override
  late Color kSecondaryColor20 = const Color(0xFFB294D1);
  @override
  late Color kSecondaireLight = const Color(0xFFF2EDF7);
  @override
  late Color kPrimaryGreen = const Color(0xFF59CC7E);
  @override
  late Color kGreen100 = const Color(0xFFD4F7DF);
  @override
  late Color kGray = const Color(0xFF808080);
  @override
  late Color kGrayPlaceholdertext = const Color(0xFFFFFDD7);
  @override
  late Color kYello = const Color(0xFFFFD9A2);
  @override
  late Color kRed = const Color(0xFFF0778D);
  @override
  late Color kLightRed = const Color(0xFFFFAEAE);
  @override
  late Color kDeepRed = const Color(0xFFFF0000);
  @override
  late Color kWhite = const Color(0xFFFFFFFF);
  @override
  late Color kBlack = const Color(0xFF000000);

  /// Pro
  @override
  late Color kPrimaryColorPro = const Color(0xFF7F4DB3);
  late Color kPrimaryLightColorPro = const Color(0xFFF2EDF7);
  late Color kGreenColorPro = const Color(0xFF59CC7E);
  @override
  late Color kSecondaryColorPro = const Color(0xFFB294D1);
  @override
  late Color kSecondaryColor20Pro = const Color(0xFFB294D1).withOpacity(.2);
  @override
  late Color kSecondaireLightPro = const Color(0xFFF2EDF7);
  @override
  late Color kPrimaryGreenPro = const Color(0xFF59CC7E);
  @override
  late Color kGreen100Pro = const Color(0xFFD4F7DF);
  @override
  late Color kGrayPro = const Color(0xFF808080);
  @override
  late Color kYelloPro = const Color(0xFFFFD9A2);
  @override
  late Color kRedPro = const Color(0xFFF0778D);
  @override
  late Color kLightRedPro = const Color(0xFFFFAEAE);
  @override
  late Color kDeepRedPro = const Color(0xFFFF0000);
  @override
  late Color kWhitePro = const Color(0xFFFFFFFF);
  late Color kBluePro = const Color(0xFF16A7F8);
  late Color kGreyPro = const Color(0xFFCACACA);
  late Color kLightPro = const Color(0xFFEAEAEA);
  @override
  late Color kBlackPro = const Color(0xFF000000);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
