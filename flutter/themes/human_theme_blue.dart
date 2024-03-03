import 'package:flutter/material.dart';

// Applikáció alapszínek

// ***************************************************************************
// Green theme
// Konkrét szín választás


// ThemeData colors
//final Color themePrimaryColor = Color(0xFF356859);  // Basil Green 800
final Color themePrimaryColor = Colors.blue;
//final MaterialColor themePrimarySwatch = basil;
final MaterialColor themePrimarySwatch = Colors.blue;

int _basilPrimaryValue = 0xFF37966F;
final MaterialColor basil = MaterialColor(_basilPrimaryValue,
    <int, Color>{
    50: Color(0xFF356859),
    100: Color(3435),
    200: Color(3435),
    300: Color(3435),
    400: Color(3435),
    500: Color(_basilPrimaryValue),
    600: Color(3435),
    700: Color(3435),
    800: Color(3435),
    900: Color(3435),
    } );   //Color(0xFF356859);  // Basil Green 800

final Color themeBackgroundColor = Colors.white;
// Color(0xFF455A64);

// Document Card colors
final Color themeDocumentCardBorderColor = Color(0xFFFF3A00);  // Basil Orange 800
final Color themeDocumentCardMailBorderColor = Colors.green[700]!;

//final Color themeCardBackground = Color(0xFFFFFBE6);  // Basil Orange 50
final Color themeCardBackground = Color(0xFFF5F5F5); // Color(0xFFFFFBE6);  // Basil Orange 50
final Color themeCardCollapsedBackground = Color(0xFF0174B7); //
final Color themeProviderCardBackground = Color(0xFF0757BF);  // Basil Orange 50
final Color themeCardHeadlineBackground = Color(0xFF00006C);  //
//final Color themeCardBackground = Color(0xFFFDF3BF);  // Basil Orange 50

// AppBar
//final Color themeAppBarColor = Color(0xFF0C5190);  // honlapos kék
final Color themeAppBarColor = Color(0xFF0757BF);  // honlapos kék

final Color themeAppBarTextColor = Colors.white;
final Color themeEmailHintInputText = Color(0x880757BF);  // Basil Green 500


//final Color themeBackgroundColor = Colors.green[300];
final Color themeTextColor = Color(0xFF356859);  // Basil Green 800
final Color themeATextColor = Colors.blue[700]!;

// Menu Items
//final themeMainMenuItem = Color(0xFFFF3A00);  // Basil Orange 800
//final themeMainMenuItem = Color(0xFFEF5000); //Colors.blue[500];
final themeMainMenuItem = Color(0xFFD04300); //Colors.blue[500];
final Color themeTelefonkonyvNev = Color(0xFFFF3A00);  // Basil Orange 800
//var themeMainMenuItem = Color(0xFFF3470E);  // Basil Orange 800
var themeMenuItemTextColor = Colors.white;


final Color themeDarkTextColor = Color(0xFF1E444F);
//final Color themeDarkTextColor = Color(0xFF455A64);
//final Color themeDarkTextColor = Color(0xFF353535);
//final Color themeDarkTextColor = Colors.pinkAccent;

final Color themePrimaryLightColor = Color(0xFFB8E3C4);  // basil 100


//*******************************************************************************
// Rendszer képek

const themeIconKoszonto = "assets/images/button_icon_koszonto.png";
// Ügyintézés
const themeIconProviders = "assets/images/button_icon_providers.png";
// Önkormányzat
const themeIconServices = "assets/images/button_icon_services.png";
// Kormányablak
const themeIconMaps = "assets/images/button_icon_maps.png";
// Dokumentumok
const themeIconDocuments = "assets/images/button_icon_documents.png";
// About project
const themeIconAboutProject = "assets/images/button_icon_about_project.png";
// Önkormányzat almenü kép
const themeHelpdeskHivatalEpuletImage = "assets/images/hivatal_menukep_basil@3.png";
// Kormányablak almenü kép
const themeHelpdeskKormanyablakImage = "assets/images/kormanyablak_menukep_basil@3.png";
// Háttérkép
const themeHumanBackgroundImage = "assets/images/hb_human_background_mid.png";
// Önkormányzat kicsi kör ikon
const themeIconHbosz = "assets/images/hbosz_circle_icon.png";
// Háttérkép
const themeCimerSplashScreen = "assets/images/hajduhelp_splashscreen_cimer_200x264.png";
