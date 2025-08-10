import 'package:event_planner_app/core/theme_manager/color_palette.dart';
import 'package:flutter/material.dart';

abstract class AppThemeManager{
 static ThemeData lightTheme = ThemeData(
   scaffoldBackgroundColor: ColorPalette.lightBackgroundColor,
   appBarTheme: AppBarTheme(
     backgroundColor: Colors.transparent,
     centerTitle: true,
     iconTheme: IconThemeData(
       color: Colors.black,
     ),
     titleTextStyle: TextStyle(
       fontSize: 24,
       fontWeight: FontWeight.w500,
       color: ColorPalette.appBarTitleColor,

     )
   ),
   textTheme: TextTheme(
     bodyLarge: TextStyle(
       fontFamily: "Inter",
       fontSize: 20,
       fontWeight: FontWeight.w500,
       color: Colors.white,
     ),
     bodyMedium: TextStyle(
       fontFamily: "Inter",
       fontSize: 16,
       fontWeight: FontWeight.w500,
       color: Colors.white,
     ),
   )
 );
 static ThemeData darkTheme = ThemeData();
}