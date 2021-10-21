import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  AppTheme._();

  // static final TextTheme darkAppBarTextTheme = TextTheme(
  //   headline1: GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 102, color: Color(0xffffffff))),
  //   headline2: GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 64, color: Color(0xffffffff))),
  //   headline3: GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 51, color: Color(0xffffffff))),
  //   headline4: GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 36, color: Color(0xffffffff))),
  //   headline5: GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 25, color: Color(0xffffffff))),
  //   headline6: GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 20, color: Color(0xffffffff))),
  //   subtitle1: GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 17, color: Color(0xffffffff))),
  //   subtitle2: GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 15, color: Color(0xffffffff))),
  //   bodyText1: GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 16, color: Color(0xffffffff))),
  //   bodyText2: GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 14, color: Color(0xffffffff))),
  //   button: GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 15, color: Color(0xffffffff))),
  //   caption: GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 13, color: Color(0xffffffff))),
  //   overline: GoogleFonts.ibmPlexSans(textStyle: TextStyle(fontSize: 11, color: Color(0xffffffff))),
  // );

  static final TextTheme darkTextTheme = TextTheme(
    headline1: TextStyle(
      fontFamily: "Nothern",
      fontSize: 24.w,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    headline2:
        TextStyle(fontFamily: "Nothern", fontSize: 22.w, color: Colors.black),
    headline3:
        TextStyle(fontFamily: "Nothern", fontSize: 20.w, color: Colors.black),
    headline4:
        TextStyle(fontFamily: "Nothern", fontSize: 18.w, color: Colors.black),
    headline5:
        TextStyle(fontFamily: "Nothern", fontSize: 16.w, color: Colors.black),
    headline6:
        TextStyle(fontFamily: "Nothern", fontSize: 14.w, color: Colors.black),
    subtitle1:
        TextStyle(fontFamily: "Nothern", fontSize: 12.w, color: Colors.black),
    subtitle2:
        TextStyle(fontFamily: "Nothern", fontSize: 14.w, color: Colors.black),
    bodyText1: TextStyle(
        fontFamily: "Nothern", fontSize: 12.w, color: Color(0xffACACAC)),
    bodyText2:
        TextStyle(fontFamily: "Nothern", fontSize: 16.w, color: Colors.black),
    button: TextStyle(
      fontFamily: "Nothern",
      fontSize: 16.w,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
    caption: TextStyle(
        fontFamily: "Nothern", fontSize: 10.w, color: const Color(0xffACACAC)),
    overline:
        TextStyle(fontFamily: "Nothern", fontSize: 12.w, color: Colors.black),
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: "Nothern",
    brightness: Brightness.dark,
    canvasColor: Colors.transparent,
    dialogBackgroundColor: Colors.white,
    primaryColor: const Color(0xff6b1f8c),
    scaffoldBackgroundColor: const Color(0xffffffff),
    backgroundColor: const Color(0xff464c52),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
    ),
    cardTheme: const CardTheme(color: Color(0xffffffff)),
    tabBarTheme: const TabBarTheme(
      unselectedLabelColor: Color(0xffACACAC),
      labelStyle: TextStyle(fontWeight: FontWeight.bold),
    ),
    bottomNavigationBarTheme:BottomNavigationBarThemeData(backgroundColor: Colors.white,elevation: 2,selectedItemColor: Colors.purpleAccent,unselectedItemColor: Colors.blueGrey) ,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Colors.white,
      refreshBackgroundColor: Colors.pink,
      circularTrackColor: Color(0xff6b1f8c),
      linearTrackColor: Color(0xff6b1f8c),
      linearMinHeight: 3,
    ),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontFamily: "Nothern",
        color: Colors.black,
      ),
      color: Colors.red,
      shadowColor: Colors.black,
      iconTheme: IconThemeData(
        color: Color(0xff000000),
        size: 20,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xff000000),
      size: 20,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(Color(0xffffffff)),
      trackColor: MaterialStateProperty.all(Color(0xff6b1f8c)),
    ),
    indicatorColor: const Color(0xff6b1f8c),
    disabledColor: const Color(0xffa3a3a3),
    highlightColor: Colors.white,
    textTheme: darkTextTheme,
    inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Color(0xff6b1f8c)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Color(0xff6b1f8c)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Color(0xffa3a3a3)),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Color(0xffef4765)),
        ),
        errorStyle: TextStyle(color: Color(0xffef4765))),
    dividerColor: const Color(0xffd1d1d1),
    errorColor: const Color(0xffef4765),
    cardColor: const Color(0xff282a2b),
    splashColor: Colors.blueGrey,
    colorScheme: ColorScheme.dark(
      primary: const Color(0xff6b1f8c),
      primaryVariant: const Color(0xff430077),
      secondary: const Color(0xfff2c879),
      secondaryVariant: const Color(0xfff2c879),
      background: const Color(0xffffffff),
      onPrimary: const Color(0xffacacac),
      onBackground: const Color(0xffffffff),
      onSecondary: const Color(0xfff2c879).withOpacity(0.7),
      surface: const Color(0xfff1f2f2),
      onSurface: const Color(0xff000000),
    ),
    bottomAppBarTheme:
        const BottomAppBarTheme(color: Color(0xff464c52), elevation: 0),
        accentColor: Colors.red
  );

  static ThemeData getThemeFromThemeMode() {
    return darkTheme;
  }
}
