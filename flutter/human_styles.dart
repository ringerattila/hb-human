/*
****************************************************************************
   HB Human 2020-2022
  (c) Ringer Attila
****************************************************************************
*/

import 'package:flutter/material.dart';
import 'package:flutter_html/style.dart';
import 'package:hbhuman_v2/human_themes.dart';
import 'package:hbhuman_v2/human_types_and_vars.dart';
import 'package:hbhuman_v2/human_colors.dart';
// Hajduhelp csomag
import 'package:hajduhelp/hajduhelp_types_vars.dart';

//*****************************************************************************
// HTML megjelenítéshez stílustár

// HTML
Style sHTML = new Style(
  padding: const EdgeInsets.all(0),
  backgroundColor: cardOpacity,
//  backgroundColor: Colors.amberAccent,
);


// BODY
Style sBODY = Style(
  margin: Margins.all(2),
//  margin: Margin(EdgeInsets.lerp(0, 2, 0)),
  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
  fontFamily: 'SF Pro Display Regular',
  fontSize: FontSize(16 * fontScale),
  fontWeight: FontWeight.bold,
  color: colorHtmlH6Text,
  lineHeight: LineHeight.number(1.5),  // sortávolság
  letterSpacing: 1.0,  // betűköz
  textAlign: TextAlign.left,

);


// <P> - html bekezdések
Style sP = new Style(
  padding: const EdgeInsets.all(4),
  fontSize: FontSize(16 * fontScale),
  fontWeight: FontWeight.normal,
  color: colorHtmlPText,
  margin: Margins.only(left:2, top:2, right:2, bottom:8),
  lineHeight: LineHeight.number(1.5),  // sortávolság
  letterSpacing: 0.2,  // betűköz
  textAlign: TextAlign.left,
);

// Link
Style sA = new Style(
  color: colorHtmlAText,
  fontSize: FontSize(16 * fontScale),
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
  letterSpacing: 0,  // betűköz
  textDecoration: TextDecoration.none,
  alignment: Alignment.center,

);

// H1
Style sH1 = new Style(
  padding: const EdgeInsets.all(10),
 // fontFamily: 'Raleway',
  fontSize: FontSize(14 * fontScale),
  fontWeight: FontWeight.bold,
  color: Colors.red,
  backgroundColor: Colors.yellow,
  margin: Margins.all(2),
  height: Height(60.0),  // a szöveget befoglaló doboz magassága
  lineHeight: LineHeight.number(1.0),  // sortávolság
  letterSpacing: 5,  // betűköz
  textAlign: TextAlign.center,
   border: Border.all(width: 2.0, color: Colors.black),
  alignment: Alignment.center,
);// Alap stílus


// H5 - html oldalak címei
Style sH3 = new Style(
  padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
  margin: Margins.all(2),
  fontSize: FontSize(16 * fontScale),
  fontWeight: FontWeight.bold,
  color: Colors.white, //colorHtmlH5Text,
  lineHeight: LineHeight.number(1.5),  // sortávolság
  letterSpacing: 3,  // betűköz
  textAlign: TextAlign.center,
  alignment: Alignment.center,
);

// H4 - html oldalak címei
Style sH4 = new Style(
  padding: const EdgeInsets.fromLTRB(2, 2, 2, 10),
  margin: Margins.only(left:2, top:2, right:2, bottom: 10),
  fontSize: FontSize(16 * fontScale),
  fontWeight: FontWeight.bold,
  color: colorHtmlH5Text,
  lineHeight: LineHeight.number(1.5),  // sortávolság
  letterSpacing: 5,  // betűköz
  textAlign: TextAlign.left,
);

// H5 - html oldalak címei
Style sH5 = new Style(
  padding: const EdgeInsets.fromLTRB(2, 2, 2, 10),
  margin: Margins.only(left:2, top:2, right:2, bottom: 10),
//  fontFamily: 'Raleway',
  fontSize: FontSize(16 * fontScale),
  fontWeight: FontWeight.bold,
  color: colorHtmlH5Text,
  lineHeight: LineHeight.number(1.5),  // sortávolság
  letterSpacing: 5,  // betűköz
  textAlign: TextAlign.left,
);

// H6 - html oldalak alcímei
Style sH6 = new Style(
  padding: const EdgeInsets.all(2),
  fontSize: FontSize(18 * fontScale),
  fontWeight: FontWeight.bold,
  color: colorHtmlH6Text,
  margin: Margins.all(2),
  lineHeight: LineHeight.number(1.5),  // sortávolság
  letterSpacing: 1.5,  // betűköz
  textAlign: TextAlign.center,
  alignment: Alignment.center,
);

// <UL> - html felsorolások
Style sUL = new Style(
  padding: const EdgeInsets.all(0.0),
  fontSize: FontSize(16 * fontScale),
  fontWeight: FontWeight.normal,
  color: colorHtmlH6Text,
  margin: Margins.all(0),
  lineHeight: LineHeight.number(1.5),  // sortávolság
  letterSpacing: 0,  // betűköz
  textAlign: TextAlign.left,
);


// <UL> - html felsorolások
Style cssTableOpenTimes = new Style(
  fontFamily: 'SF Pro Display Regular',
  fontSize: FontSize(16 * fontScale),
  fontWeight: FontWeight.normal,
  color: Colors.white, //colorHtmlH6Text,
  backgroundColor: colorPrimary, //Colors.grey[600],
  margin: Margins.zero,
  lineHeight: LineHeight.number(1.5),  // sortávolság
  letterSpacing: 1.0,  // betűköz
  textAlign: TextAlign.center,
  padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
  width: Width(double.infinity),
);


// <UL> - html felsorolások
Style cssCimKozepre = new Style(
  fontFamily: 'SF Pro Display Regular',
  fontSize: FontSize(16 * fontScale),
  fontWeight: FontWeight.bold,
  color: colorHtmlH6Text,
  margin: Margins.zero,
  lineHeight: LineHeight.number(1.5),  // sortávolság
  letterSpacing: 1.0,  // betűköz
  textAlign: TextAlign.center,
  width: Width(double.infinity),
);


// <LI> - html felsorolások
Style sLI = new Style(
  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 4.0, 5.0),
  fontSize: FontSize(16 * fontScale),
  fontWeight: FontWeight.normal,
  color: colorHtmlH6Text,
  margin: Margins.zero,
  letterSpacing: 0,  // betűköz
  textAlign: TextAlign.left,
);

// <TABLE> - html táblázat
Style sTABLE = new Style(
  padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
  width:Width(double.infinity),
  fontSize: FontSize(16 * fontScale),
  fontWeight: FontWeight.normal,
  color: Colors.white, //colorHtmlH6Text,
  backgroundColor: colorPrimary, //Colors.grey[600],
  margin: Margins.zero,
  lineHeight: LineHeight.number(1.5),  // sortávolság
  letterSpacing: 1.0,  // betűköz
  textAlign: TextAlign.center,
  alignment: Alignment.center,
);

// <TR> - html táblázat sor
Style sTR = new Style(
  padding: const EdgeInsets.fromLTRB(8.0, 3.0, 3.0, 3.0),
  margin: Margins.zero,
  backgroundColor: Colors.green,
  width: Width(double.infinity),
  textAlign: TextAlign.center,
  alignment: Alignment.center,
);


// <TD> - html táblázat cella
Style sTD = new Style(
  padding: const EdgeInsets.fromLTRB(8.0, 3.0, 3.0, 3.0),
  margin: Margins.zero,
  width: Width(double.maxFinite),
  textAlign: TextAlign.center,
  alignment: Alignment.center,
);

// <TD> - html táblázat cella
Style sHR = new Style(
  width: Width(300),
  color: colorHtmlH6Text,
  margin: Margins.only(left: 18.0, top: 3.0, right: 18.0, bottom: 3.0),
  textAlign: TextAlign.center,
);

//*****************************************************************************
// CSS Selectors
// ugyfelfogadas
Style sUgyfelfogadas = new Style(
  padding: const EdgeInsets.all(10),
  fontSize: FontSize(18 * fontScale),
  fontWeight: FontWeight.bold,
  color: colorHtmlPText,
  backgroundColor: colorPrimaryLight,
  margin: Margins.zero,
  lineHeight: LineHeight.number(2.0),  // sortávolság
  letterSpacing: 0,  // betűköz
  textAlign: TextAlign.center,
);

// Középre igazítás
Style sKozepre = new Style(
  textAlign: TextAlign.center,
);

// Jobbra igazítás class="aright"
Style sARight = new Style(
  textAlign: TextAlign.right,
);



// Telefonszám hívás indítással
Style sHonlap = new Style(
  alignment: Alignment.center,
  fontSize: FontSize(20 * fontScale),
  fontWeight: FontWeight.bold,
  color: colorHtmlPText,
  backgroundColor: Colors.grey,//
  textAlign: TextAlign.center,
);

// Telefonszam2
var sTel2 = new MyStyle(MainAxisAlignment.start);

//*****************************************************************************
// HTML oldalak stílus beállítása
Map<String, Style>humanHtmlStyle =
  {
  // HTML tags
  "html" : sHTML,
  "body" : sBODY,
  "p" :  sP,
  "h1" :  sH1,
  "h2" : Style.fromTextStyle(TextStyle(fontFamily: "serif")),
  "h3" :  sH3,
  "h5" :  sH5,
  "h6" :  sH6,
  "ul" :  sUL,
  "li" :  sLI,
  "table" :  sTABLE,
  "tr" :  sTR,
  "td" :  sTD,
  "hr" :  sHR,
  // Selectors
  ".ugyfelfogadas" :  sUgyfelfogadas,
  ".tableOpenTimes": cssTableOpenTimes,
  ".cimKozepre": cssCimKozepre,
  ".kozepre" :  sKozepre,
  ".aright" :  sARight,
  ".honlap" :  sHonlap,
  ".telszambutton" :  sTel2,
  ".cent" : Style(
    textAlign: TextAlign.center,
//    color: Colors.greenAccent,
    ),
  "a" : sA,
};



ButtonStyle   nincsTalalatButton = ElevatedButton.styleFrom(
  backgroundColor: colorMainMenuItem, // gomb háttere
  foregroundColor: Colors.white,  // szöveg színe
  disabledForegroundColor: Colors.blue,  // disabled button color
  elevation: 5,
);

// BottomAppBar
TextStyle textBottomAppBar = new TextStyle(
  fontFamily: 'SF Pro Display Light',
  color: Colors.white,
  fontSize: 14 * fontScale,
  fontWeight: FontWeight.normal,
);

// Ügykártya
TextStyle textCardTitleRow = new TextStyle(
  color: colorDarkText, //Colors.green[800],
  fontSize: 16 * fontScale,
  fontWeight: FontWeight.bold,
);

// Szolgáltatások - collapsed children
TextStyle textCollapsedCardTitleRow = new TextStyle(
  color: Colors.white, // colorMainMenuItem, //Colors.green[800],
  fontSize: 16 * fontScale,
  fontWeight: FontWeight.normal,
  letterSpacing: 1.5,
);

// Szolgáltatások - collapsed children subtitle
TextStyle textCollapsedCardSubtitleRow = new TextStyle(
  color: Colors.black, // colorDarkText, //Colors.green[800],
  fontSize: 14 * fontScale,
  fontWeight: FontWeight.normal,
  letterSpacing: 1.5,
);

TextStyle textCardLabel = new TextStyle(
  color: Colors.grey[800],
  fontSize: 14 * fontScale,
);

// Listán megjelenő szövegek
TextStyle textLista = new TextStyle(
  fontSize: 14 * fontScale,
);

// Szolgáltatás listán megjelenő szövegek
TextStyle textServicesLista = new TextStyle(
  fontSize: 14 * fontScale,
  color: Colors.white,
  letterSpacing: 1.3,
);


// Szolgáltatás csoportok
TextStyle textGroupServices = new TextStyle(
  color: Colors.white,
  fontSize: 16 * fontScale,
  letterSpacing: 1.5,
  fontWeight: FontWeight.normal,
);


TextStyle textBoldRow = new TextStyle(
  color: Colors.grey[800],
  fontSize: 14 * fontScale,
  fontWeight: FontWeight.bold,
);

TextStyle textCardProvider = new TextStyle(
  color: Colors.white, // colorMainMenuItem, // Colors.grey[800],
  fontFamily: 'SF Pro Display Regular',
  fontSize: 14 * fontScale,
  letterSpacing: 1.5,
);

// Szolgáltatásoknál, dokumentumoknál a szolgáltató fejléc
TextStyle textCardDocProvider = new TextStyle(
  color: Colors.white, // colorMainMenuItem, // Colors.grey[800],
  fontFamily: 'SF Pro Display Light',
  fontSize: 12 * fontScale,
  letterSpacing: 1.5,
  fontWeight: FontWeight.bold,
);

TextStyle textPolgi = new TextStyle(
  fontSize: 14 * fontScale,
  fontWeight: FontWeight.bold,
);
// Telefonszám
TextStyle textTelefon = new TextStyle(
  fontSize: 16 * fontScale,
  fontWeight: FontWeight.normal,
);

// Kártyán ügyfélfogadás
TextStyle textCardUgyfelFogadas = new TextStyle(
  fontSize: 14 * fontScale,
  fontWeight: FontWeight.normal,
  height: 1.3, // sortávolság
);

TextStyle textCardEmail = new TextStyle(
  fontSize: 16 * fontScale,
  fontWeight: FontWeight.normal,
);


// Keresőcsík szöveg
TextStyle textSearchInput = new TextStyle(
  fontSize: 18 * fontScale,
  fontWeight: FontWeight.normal,
  color: Colors.white,
);

// Keresőcsík Keresés szó
TextStyle textHintSearchInput = new TextStyle(
  fontSize: 18 * fontScale,
  fontWeight: FontWeight.normal,
  color: colorPrimaryLight,
);

// E-mail cím
TextStyle textEmailHintInput = new TextStyle(
  fontSize: 16 * fontScale,
  fontWeight: FontWeight.normal,
  color: colorEmailHintInputText,
);
// E-mail cím
TextStyle textEmailInput = new TextStyle(
  fontSize: 16 * fontScale,
  fontWeight: FontWeight.normal,
  color: colorPrimary,
);

// Főmenü
TextStyle textMainMenu = new TextStyle(
  fontSize: 16 * fontScale,
  fontFamily: 'SF Pro Display Regular',
  fontWeight: FontWeight.normal,
  color: colorMainMenuItemText,
  letterSpacing: 1.5,  // betűköz

);

// AppBar
TextStyle textAppBar = new TextStyle(
  fontFamily: 'SF Pro Display Regular',
  fontWeight: FontWeight.normal,
  fontSize: 18.0 * fontScale,
  color: colorAppBarText,
  letterSpacing: 2.0,  // betűköz

);

// Nincs találat gomb kereséskor
TextStyle nincsTalalat = new TextStyle(
  fontSize: 16 * fontScale,
  fontWeight: FontWeight.bold,
);

// Provider icon alatti szöveg
TextStyle textProvIcon = new TextStyle(
  fontSize: 12  * fontScale,
  fontWeight: FontWeight.normal,
  letterSpacing: 1.05,
);

// Dokumentum kártyán szolgáltató neve
TextStyle textDocCardProviderName = new TextStyle(
  fontSize: 14 * fontScale,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.1,
);

// Dokumentum kártyán szolgáltató címe
TextStyle textDocCardProviderAddress = new TextStyle(
  fontSize: 14 * fontScale,
  fontWeight: FontWeight.normal,
  letterSpacing: 1.1,

);

// Telefonszám
TextStyle stOsztalyVezeto = new TextStyle(
//fontFamily: 'Roboto',
  fontSize: 16 * fontScale,
  color: colorDarkText,
  fontWeight: FontWeight.normal,
);
