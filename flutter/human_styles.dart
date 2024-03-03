// ****************************************************************************
// HB Human 2020-2021
// (c) Ringer Attila
// ****************************************************************************


import 'package:flutter/material.dart';
import 'package:flutter_html/style.dart';
import 'package:hbhuman_v2/human_themes.dart';
import 'package:hbhuman_v2/human_types_and_vars.dart';
import 'package:hbhuman_v2/human_colors.dart';
// Hajduhelp csomag
import 'package:hajduhelp/hajduhelp_types_vars.dart';
//import 'package:hajduhelp/hajduhelp.dart';
//import 'package:hajduhelp/hajduhelp_constants.dart';

//*****************************************************************************
// HTML megjelenítéshez stílustár

// HTML
Style sHTML = new Style(
  padding: const EdgeInsets.all(0),
  backgroundColor: cardOpacity,
//  backgroundColor: Colors.amberAccent,
);


/*

// BODY
Style sBODY = new Style(
  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
  fontFamily: 'SF Pro Display Regular',
  fontSize: FontSize(16 * fontScale),
  fontWeight: FontWeight.bold,
  color: colorHtmlH6Text,
//  backgroundColor: htmlBODYBackgroundColor,
 //  backgroundColor: Colors.blue,
  margin: new EdgeInsets.all(2.0),
  // height: 60.0,  // a szöveget befoglaló doboz magassága
  lineHeight: LineHeight.number(1.5),  // sortávolság
  letterSpacing: 1.0,  // betűköz
  textAlign: TextAlign.left,

);

*/

// BODY
Style sBODY = Style(
  margin: Margins.all(2),
//  margin: Margin(EdgeInsets.lerp(0, 2, 0)),
  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
  fontFamily: 'SF Pro Display Regular',
  fontSize: FontSize(16 * fontScale),
  fontWeight: FontWeight.bold,
  color: colorHtmlH6Text,
//  backgroundColor: htmlBODYBackgroundColor,
  //  backgroundColor: Colors.blue,
  // margin: const EdgeInsets.zero,
  // height: 60.0,  // a szöveget befoglaló doboz magassága
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
  // height: 60.0,  // a szöveget befoglaló doboz magassága
  lineHeight: LineHeight.number(1.5),  // sortávolság
  letterSpacing: 0.2,  // betűköz
  textAlign: TextAlign.left,
);

// Link
Style sA = new Style(
  color: colorHtmlAText,
  // fontFamily: 'Raleway',
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
 //   textShadow: Shadow()
   //   offset: Offset(-1.5, -1.5),
//      color: Colors.black,

  border: Border.all(width: 2.0, color: Colors.black),
  alignment: Alignment.center,
);// Alap stílus


// H5 - html oldalak címei
Style sH3 = new Style(
  padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
  margin: Margins.all(2),
//  fontFamily: 'Raleway',
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
 // fontFamily: 'Raleway',
  fontSize: FontSize(16 * fontScale),
  fontWeight: FontWeight.bold,
  color: colorHtmlH5Text,
  //  backgroundColor: Colors.pinkAccent[200],
//  margin: EdgeInsets.all(2),
  // height: 60.0,  // a szöveget befoglaló doboz magassága
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

 //  backgroundColor: Colors.pinkAccent[200],
//  margin: EdgeInsets.all(2),
 // height: 60.0,  // a szöveget befoglaló doboz magassága
  lineHeight: LineHeight.number(1.5),  // sortávolság
  letterSpacing: 5,  // betűköz
  textAlign: TextAlign.left,
);

// H6 - html oldalak alcímei
Style sH6 = new Style(
  padding: const EdgeInsets.all(2),
//  fontFamily: 'Raleway',
  fontSize: FontSize(18 * fontScale),
  fontWeight: FontWeight.bold,
  color: colorHtmlH6Text,
  // backgroundColor: Colors.grey[200],
  margin: Margins.all(2),
 // height: 60.0,  // a szöveget befoglaló doboz magassága
  lineHeight: LineHeight.number(1.5),  // sortávolság
  letterSpacing: 1.5,  // betűköz
  textAlign: TextAlign.center,
  alignment: Alignment.center,
);

// <UL> - html felsorolások
Style sUL = new Style(
 // padding: const EdgeInsets.fromLTRB(0.0, 0.0, 4.0, 5.0),
  padding: const EdgeInsets.all(0.0),
 // fontFamily: 'Raleway',
  fontSize: FontSize(16 * fontScale),
  fontWeight: FontWeight.normal,
  color: colorHtmlH6Text,
//  backgroundColor: Colors.yellow[200],
  margin: Margins.all(0),
  // height: 60.0,  // a szöveget befoglaló doboz magassága
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
  // height: 60.0,  // a szöveget befoglaló doboz magassága
  lineHeight: LineHeight.number(1.5),  // sortávolság
  letterSpacing: 1.0,  // betűköz
  textAlign: TextAlign.center,
  padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
  width: Width(double.infinity),
  // fontFamily: 'Raleway',
);


// <UL> - html felsorolások
Style cssCimKozepre = new Style(
  fontFamily: 'SF Pro Display Regular',
  fontSize: FontSize(16 * fontScale),
  fontWeight: FontWeight.bold,
  color: colorHtmlH6Text,
  //backgroundColor: colorPrimary, //Colors.grey[600],
  margin: Margins.zero,
  // height: 60.0,  // a szöveget befoglaló doboz magassága
  lineHeight: LineHeight.number(1.5),  // sortávolság
  letterSpacing: 1.0,  // betűköz
  textAlign: TextAlign.center,
  //padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
  width: Width(double.infinity),
  // fontFamily: 'Raleway',
);


// <LI> - html felsorolások
Style sLI = new Style(
  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 4.0, 5.0),
//  padding: const EdgeInsets.all(0.0),
//  fontFamily: 'Raleway',
  fontSize: FontSize(16 * fontScale),
  fontWeight: FontWeight.normal,
 // listStyleType: disc,
  color: colorHtmlH6Text,
//  color: Colors.blue,
//  backgroundColor: Colors.grey[600],
  margin: Margins.zero,
 // height: 60.0,  // a szöveget befoglaló doboz magassága
  //lineHeight: 1.5,  // sortávolság
  letterSpacing: 0,  // betűköz
  textAlign: TextAlign.left,
);

// <TABLE> - html táblázat
Style sTABLE = new Style(
  padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
  width:Width(double.infinity),
//  padding: const EdgeInsets.all(0.0),
//  fontFamily: 'Raleway',
  fontSize: FontSize(16 * fontScale),
  fontWeight: FontWeight.normal,
  // listStyleType: disc,
  color: Colors.white, //colorHtmlH6Text,
//  color: Colors.blue,
  backgroundColor: colorPrimary, //Colors.grey[600],
  margin: Margins.zero,
  // height: 60.0,  // a szöveget befoglaló doboz magassága
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
  // height: 60.0,  // a szöveget befoglaló doboz magassága
  // lineHeight: 1.5,  // sortávolság
  // letterSpacing: 0,  // betűköz
  textAlign: TextAlign.center,
  alignment: Alignment.center,
);


// <TD> - html táblázat cella
Style sTD = new Style(
  padding: const EdgeInsets.fromLTRB(8.0, 3.0, 3.0, 3.0),
  margin: Margins.zero,
 // backgroundColor: Colors.red,
  width: Width(double.maxFinite),
  // height: 60.0,  // a szöveget befoglaló doboz magassága
 // lineHeight: 1.5,  // sortávolság
 // letterSpacing: 0,  // betűköz
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
//  fontFamily: 'Raleway',
  fontSize: FontSize(18 * fontScale),
  fontWeight: FontWeight.bold,
  color: colorHtmlPText,
  backgroundColor: colorPrimaryLight,
  margin: Margins.zero,
  // height: 60.0,  // a szöveget befoglaló doboz magassága
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

/*
// Telefonszám hívás indítással
Style sPhoneCall = new Style(
//  padding: const EdgeInsets.all(00),
//  fontFamily: 'Raleway',
  fontSize: FontSize(20 * fontScale),
  fontWeight: FontWeight.bold,
  color: colorHtmlPText,
//  b
  backgroundColor: Colors.grey,//
//  margin: EdgeInsets.all(0),
  // height: 60.0,  // a szöveget befoglaló doboz magassága
//  lineHeight: 1.5,  // sortávolság
//  letterSpacing: 0,  // betűköz
  textAlign: TextAlign.center,
);
*/
/*
// Telefonszám hívás indítással
Style sTelSzamButton = new Style(
//  padding: const EdgeInsets.all(00),
  width: 200 * fontScale,
  height: 40 * fontScale,
  alignment: Alignment.center,
//  fontFamily: 'Raleway',
  border: Border.all(
      width: 2,
      color: const Color(0xFF983465),
 //     style: BoxDecoration(borderRadius: BorderRadius.circular(10)),
//      borderRadius: BorderRadius.all(Radius.circular(10))),
),
 // )//,
 // borderRadius:
 // mainAxisAlignment: MainAxisAlignment.spaceAround,
  fontSize: FontSize(20 * fontScale),
  fontWeight: FontWeight.bold,
  color: colorHtmlPText,
  backgroundColor: Colors.grey,//
//  margin: EdgeInsets.all(0),
  // height: 60.0,  // a szöveget befoglaló doboz magassága
//  lineHeight: 1.5,  // sortávolság
//  letterSpacing: 0,  // betűköz
  textAlign: TextAlign.center,
);
*/



// Telefonszám hívás indítással
Style sHonlap = new Style(
//  padding: const EdgeInsets.all(00),
 // width: double(MainAxisSize.max),
 // height: 40,
  alignment: Alignment.center,
//  fontFamily: 'Raleway',
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

/*
Style stel1 = new Style(
  width: 10,
);
*/
//*****************************************************************************
// HB human Applikáció

ButtonStyle   nincsTalalatButton = ElevatedButton.styleFrom(
  backgroundColor: colorMainMenuItem, // gomb háttere
  foregroundColor: Colors.white,  // szöveg színe
  disabledForegroundColor: Colors.blue,  // disabled button color
  elevation: 5,
);
//style: ButtonStyle(
// textStyle: (),
// backgroundColor: ColthemeBackgroundColor,
//elevation: 5,

// minimumSize: 200,
// shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
//RoundedRectangleBorder(
// borderRadius: BorderRadius.all(Radius.circular(10))),


// BottomAppBar
TextStyle textBottomAppBar = new TextStyle(
  //fontFamily: 'Roboto Condensed',
  fontFamily: 'SF Pro Display Light',
  color: Colors.white,
  fontSize: 14 * fontScale,
  //fontFamily: 'Roboto Regular',
  fontWeight: FontWeight.normal,
);

/*
// Almenü gombok
TextStyle textAlMenuButton = new TextStyle(
//  color: Colors.green[900],
  fontSize: 14 * fontScale,
  fontFamily: 'Roboto Condensed',
  fontWeight: FontWeight.normal,
);
*/
/*
// Ügykártya
TextStyle textUgyCardCimsor = new TextStyle(
  color: colorDarkText,
  fontSize: 16 * fontScale,
  //fontFamily: 'Roboto Regular',
  fontWeight: FontWeight.bold,
);
*/
// Ügykártya
TextStyle textCardTitleRow = new TextStyle(
  color: colorDarkText, //Colors.green[800],
  fontSize: 16 * fontScale,
  // fontFamily: 'Roboto Regular',
  fontWeight: FontWeight.bold,
);

// Szolgáltatások - collapsed children
TextStyle textCollapsedCardTitleRow = new TextStyle(
//  color: colorMainMenuItem, //Colors.green[800],
  color: Colors.white, // colorMainMenuItem, //Colors.green[800],
  fontSize: 16 * fontScale,
  // fontFamily: 'Roboto Regular',
  fontWeight: FontWeight.normal,
  letterSpacing: 1.5,
);

// Szolgáltatások - collapsed children subtitle
TextStyle textCollapsedCardSubtitleRow = new TextStyle(
//  color: colorDarkText, //Colors.green[800],
  color: Colors.black, // colorDarkText, //Colors.green[800],
  fontSize: 14 * fontScale,
  // fontFamily: 'Roboto Regular',
  fontWeight: FontWeight.normal,
  letterSpacing: 1.5,
);

TextStyle textCardLabel = new TextStyle(
  color: Colors.grey[800],
  fontSize: 14 * fontScale,
//  fontFamily: 'Roboto Regular',
//  fontWeight: FontWeight.bold,
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
  //fontFamily: 'Roboto Regular',
  fontWeight: FontWeight.normal,
);


TextStyle textBoldRow = new TextStyle(
  color: Colors.grey[800],
  fontSize: 14 * fontScale,
//  fontFamily: 'Roboto Regular',
  fontWeight: FontWeight.bold,
);

TextStyle textCardProvider = new TextStyle(
  color: Colors.white, // colorMainMenuItem, // Colors.grey[800],
  fontFamily: 'SF Pro Display Regular',
  fontSize: 14 * fontScale,
  letterSpacing: 1.5,
//  fontFamily: 'Roboto Regular',
 // fontWeight: FontWeight.bold,
);

// Szolgáltatásoknál, dokumentumoknál a szolgáltató fejléc
TextStyle textCardDocProvider = new TextStyle(
  color: Colors.white, // colorMainMenuItem, // Colors.grey[800],
  fontFamily: 'SF Pro Display Light',
  fontSize: 12 * fontScale,
  letterSpacing: 1.5,
//  fontFamily: 'Roboto Regular',
  fontWeight: FontWeight.bold,
);

TextStyle textPolgi = new TextStyle(
  fontSize: 14 * fontScale,
  fontWeight: FontWeight.bold,
);
// Telefonszám
TextStyle textTelefon = new TextStyle(
  // fontFamily: 'Roboto',
  fontSize: 16 * fontScale,
  fontWeight: FontWeight.normal,
);

// Kártyán ügyfélfogadás
TextStyle textCardUgyfelFogadas = new TextStyle(
  // fontFamily: 'Roboto',
  fontSize: 14 * fontScale,
  fontWeight: FontWeight.normal,
  height: 1.3, // sortávolság
//  textAlign: TextAlign.center,
);

TextStyle textCardEmail = new TextStyle(
  // fontFamily: 'Roboto',
  fontSize: 16 * fontScale,
  fontWeight: FontWeight.normal,
  //color: colorPrimary,
  //  textAlign: TextAlign.center,
);

/*
// Telefonkönyv
TextStyle textTelefonkonyNev = new TextStyle(
  // fontFamily: 'Roboto',
  color: colorTelefonkonyvNev,
  //fontSize: 16,
  //fontWeight: FontWeight.normal,
);
*/
/*
TextStyle textTelefonkonySzam = new TextStyle(
  // fontFamily: 'Roboto',
    color: colorDarkText,
  //fontSize: 16,
  //fontWeight: FontWeight.normal,
);
*/
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
/*
// AppBar
TextStyle textTelefonkonyvMunkakor = new TextStyle(
  // fontSize: 16,
  fontFamily: "Roboto Condensed",
  fontWeight: FontWeight.normal,
//  fontSize: 18.0,
  color: colorDarkText,
  height: 1.5,
//  lineHeight: 1.5,  // sortávolság
//  letterSpacing: 3,  // betűköz

);
*/


// Nincs találat gomb kereséskor
TextStyle nincsTalalat = new TextStyle(
  // fontFamily: 'Roboto',
  fontSize: 16 * fontScale,
  fontWeight: FontWeight.bold,
);

// Provider icon alatti szöveg
TextStyle textProvIcon = new TextStyle(
  // fontFamily: 'Roboto',
  fontSize: 12  * fontScale,
  fontWeight: FontWeight.normal,
  letterSpacing: 1.05,
);

// Dokumentum kártyán szolgáltató neve
TextStyle textDocCardProviderName = new TextStyle(
  // fontFamily: 'Roboto',
  fontSize: 14 * fontScale,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.1,
);

// Dokumentum kártyán szolgáltató címe
TextStyle textDocCardProviderAddress = new TextStyle(
  // fontFamily: 'Roboto',
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
/*
// Honlap link
TextStyle stHonlapLink = new TextStyle(
//fontFamily: 'Roboto',
  fontSize: 16 * fontScale,
  color: Colors.blue,
  backgroundColor: Colors.transparent,
  fontWeight: FontWeight.normal,
);
*/


