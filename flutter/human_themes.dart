
import 'package:flutter/material.dart';
//import 'package:flutter_html/style.dart';
import 'package:hbhuman_v2/human_colors.dart';
import 'package:hbhuman_v2/human_styles.dart';
//import 'package:hbhuman_v2/human_types_and_vars.dart';
//import 'package:hbhuman/human_types_and_vars.dart';


///*****************************************************************************
/// Általános, megjelenést befolyásoló konstansok
// Kártyák átlátszósága
final Color cardOpacity = colorCardBackground.withOpacity(0.85);

// Keresőcsík megjelenése
InputDecoration decorationSearchInput = new InputDecoration(
   //   filled: true,
   //   fillColor: Colors.lightGreen,
  contentPadding: EdgeInsets.fromLTRB(5.0, 0, 0, 8.0),
  //  border: const OutlineInputBorder(),
  hintText: "Keresés",
  hintStyle: textHintSearchInput,
);


ThemeData appTheme = new ThemeData(
  //brightness: Brightness.light,
  //primaryColor: Colors.green,

  //fontFamily: 'Raleway',
  //fontFamily: 'Roboto Regular',
  fontFamily: 'SF Pro Display Regular',
  primarySwatch: colorPrimarySwatch,  // themePrimaryColor,
  backgroundColor: colorThemeBackground,
  scaffoldBackgroundColor: colorCardBackground,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
     // textStyle: (),
    // backgroundColor: ColthemeBackgroundColor,
     // elevation: 5,
     // minimumSize: 200,
     // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
      //RoundedRectangleBorder(
        //  borderRadius: BorderRadius.all(Radius.circular(10))),
    ),
  ),


  textButtonTheme: TextButtonThemeData (
    style: TextButton.styleFrom(
      backgroundColor: Colors.white,
    //  backgroundColor: Colors.green[800],
    ), // styleFrom
  ),
  // Szövegek
  textTheme: TextTheme(
    bodyLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, ),
    displayLarge: TextStyle(fontSize: 36.0,  fontWeight: FontWeight.bold, ),
    headlineMedium: TextStyle(fontSize: 16.0, fontFamily: 'SF Pro Display Semibold', fontWeight: FontWeight.normal, color: colorDarkText),
    headlineSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: colorHeadline5, height: 1.5, letterSpacing: 3, ),
    titleLarge: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: colorHeadline6, height: 1.5, letterSpacing: 1.5),
    titleMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, ),
    ),

  bottomAppBarTheme: BottomAppBarTheme (
    color: colorBottomAppBar,
  ),

  appBarTheme:  AppBarTheme(
    color: colorAppBar,
  ) ,


);

//Theme(
//data: Themedata(),
//child: ExpansionTile(),
//)

