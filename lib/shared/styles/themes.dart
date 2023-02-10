import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

import 'colors.dart';

ThemeData lightTheme = ThemeData(
  primaryColor: DuckColors.duckWhite,
  primarySwatch: DuckColors.duckMainColor,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    actionsIconTheme: IconThemeData(
      color: DuckColors.duckWhite,
    ),
    titleTextStyle: TextStyle(
      color:DuckColors.duckWhite,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(color:DuckColors.duckWhite,),
    backgroundColor:  DuckColors.duckMainColor,
    elevation: 0.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: DuckColors.duckMainColor,
      statusBarBrightness: Brightness.light,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor:DuckColors.duckMainColor,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: DuckColors.duckMainColor,
    unselectedItemColor: Colors.grey,
    elevation: 30.0,
    backgroundColor: DuckColors.duckWhite,
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      fontSize: 14.5,
      fontWeight: FontWeight.w600,
      color: DuckColors.duckBlack,
    ),
  ),
);


ThemeData darkTheme = ThemeData(
  // primaryColor: DuckColors.duckMainColor,
  primarySwatch: DuckColors.duckMainColor,
  scaffoldBackgroundColor:DuckColors.duckWhite,
  appBarTheme: const AppBarTheme(
    actionsIconTheme: IconThemeData(
      color: DuckColors.duckMainColor,
    ),
    titleTextStyle: TextStyle(
      color: DuckColors.duckWhite,
    ),
    iconTheme: IconThemeData(
      color: DuckColors.duckMainColor,
    ),
    backgroundColor: DuckColors.duckBlack,
    elevation: 0.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: DuckColors.duckBlack,
      statusBarBrightness: Brightness.light,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: DuckColors.duckMainColor,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: DuckColors.duckMainColor,
    unselectedItemColor: Colors.grey,
    elevation: 30.0,
    backgroundColor: DuckColors.duckBlack,
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      fontSize: 14.5,
      fontWeight: FontWeight.w600,
      color: DuckColors.duckBlack,
    ),
  ),
);
