//library constants;

//import 'package:flutter/material.dart';
import 'package:hbhuman_v2/human_colors.dart';
import 'package:hbhuman_v2/pages/human_about_project.dart';
import 'package:hbhuman_v2/pages/human_greetings.dart';


 // Shared Preference keys 
 //const kHelpdeskIconSize = 140;
 const kDeviceUDID = "device_id";

// Helpdesk images
 //const kHelpdeskHivatalEpuletImage = "assets/images/hivatal4.png";

// Strings
 const kfooterText = "HAJDÚBÖSZÖRMÉNY VÁROS ÖNKORMÁNYZATA";
 const kAppBarMainTitle = "SZOCIÁLIS SZOLGÁLTATÁSOK";  // Főmenü title
 const kAppBarUgyTitle = "ÜGYINTÉZÉS";  // Ügylap mutatásakor
 // const kGreetingsTitle = "Polgármesteri köszöntő";  // Köszöntő
 const kAppBarDocumentsTitle = "DOKUMENTUMOK";  // Dokumentumok mutatásakor
 const kAppBarOnkormanyzatTitle = "POLGÁRMESTERI HIVATAL";  // Önkormányzat title
 const kAppBarKormanyablakTitle = "KORMÁNYABLAK";  // Kormányablak title
const kAboutProjectTitle = "A PROJEKT BEMUTATÁSA";  // A projekt bemutatása

 class MyMenuItem {
  String myMName = '';
  String myMTitle = '';
  String myMAppTitle = '';
  String myMIcon = '';
  String myMTarget = '';
  String myHmtl = '';

  MyMenuItem(this.myMName, this.myMTitle, this.myMAppTitle, this.myMIcon, this.myMTarget, this.myHmtl);
}

const baseUrl = 'https://4220.hu/hajduhelp/index.php/';
// dokumentumok letöltése innen történik (share)
const dlBaseUrl = 'https://4220.hu/hajduhelp/';
const urlDocumentDownload = dlBaseUrl + 'assets/documents/szocialis/'; // **
// PDF letöltéshez
const urlPDFDownload = 'https://4220.hu/hajduhelp/assets/documents/szocialis/';
// Email küldéshez
const urlSendMail = baseUrl + 'doc_send';
// Térkép megjelenítéshez
const urlShowMap = baseUrl + 'show_map';

 class AlMenuItem {
 String alMenuName = '';
 String alMenuButtonTitle = '';
 //PolgOsztaly onkOsztaly;
 String alMAppBarTitle = '';
 //String myMIcon = '';
 //String myMTarget = '';
 //String myHmtl = '';

 AlMenuItem(this.alMenuName, this.alMenuButtonTitle, this.alMAppBarTitle);
}

// JSON adatlekéréshez
const urlServicesLista = baseUrl + 'json/human_services_lista';
const urlDocumentsLista = baseUrl + 'json/human_documents_lista';
const urlProvidersLista = baseUrl + 'json/human_providers_lista';
const urlBindServicesLista = baseUrl + 'json/human_bind_services_lista';
const urlListServicesLista = baseUrl + 'json/human_listservices_lista';
const urlKozlemenyJson = baseUrl + 'json/human_kozlemeny';

//const noShare = '';  // nincs mit megosztani jelzés

// Ikonokhoz tartozó parancs azonosító (mit kell csinálni)
enum CmdIcon  { cmdEmail, cmdDocuments, cmdServices, cmdPhone, cmdWebpage, cmdFacebook }
enum CmdStep  { cmdProviderCard, cmdProviderDocuments, cmdProviderMaps }

// E-mail küldéshez használjuk
const mailBody = '';
const mailSubject = 'Érdeklődés';
//

 MyMenuItem mGreetings = new MyMenuItem("mGreetings", "KÖSZÖNTŐ", 'KÖSZÖNTŐ', iconKoszonto, '', contentGreetings );
 MyMenuItem  mProviders = new MyMenuItem("mProviders", "SZOLGÁLTATÓK", 'INTÉZHETŐ ÜGYEK', iconProviders, '', '' );
 MyMenuItem  mServices = new MyMenuItem("mServices", 'SZOLGÁLTATÁSOK', 'POLGÁRMESTERI HIVATAL', iconServices, '', '' );
 MyMenuItem  mMaps = new MyMenuItem("mMaps", 'TÉRKÉPEK', 'KORMÁNYABLAK', iconMaps, '', '' );
 MyMenuItem  mDocuments = new MyMenuItem("mDocuments", "DOKUMENTUMOK", 'DOKUMENTUMOK', iconDocuments, '', '' );
 MyMenuItem  mAboutProject = new MyMenuItem("mAboutProject", "A PROJEKTRŐL", 'A PROJEKT BEMUTATÁSA', iconAboutProject, '', contentAboutProject );


// Dokumentum kártya
MyMenuItem  mDocCardPDF = new MyMenuItem('mDocCardPDF', 'Megnézem', 'Dokumentum', '', '', '' );
MyMenuItem  mDocCardEmail = new MyMenuItem('mDocCardEmail', 'Kérem E-mailben', 'Dokumentum' , '', '', '' );
//MyMenuItem  mDocCardSajat = new MyMenuItem('mSajat', 'Saját hatáskörben intézhető ügyek', 'Kormányablak', '', urlSajat );
//MyMenuItem  mKiegeszito = new MyMenuItem('mKiegeszito', 'Kiegészítő szolgáltatások', 'Kormányablak', '', urlKiegeszito );
//MyMenuItem  mIdopontFoglalas = new MyMenuItem('mIdopontFoglalas', 'IDŐPONT FOGLALÁS', 'Kormányablak', '', urlIdopontFoglalas );

///var myMenuItems [{'sGreeting': "Greeting"}];


// Kormányablak kicsi kör ikon
const iconKorm = "assets/images/kormanyablak_circle_icon-min.png";
// HTML oldalak képei
// Grettings oldal
const greetingsImage1 = "asset:assets/images/kissattila@3.png";
// About projekt
const aboutProjektImage1 = "asset:assets/images/ivelt_felso_szechenyi_logo_400.png";
const aboutProjektImage2 = "asset:assets/images/teglalap_logo_400.png";

//
const hbCimerTransparent = "assets/images/hb_cimer_transparent@3.png";
const kormanyablakLogoTransparent = "assets/images/kormanyablak_logo_transparent_kicsi.png";

// Icons
const iconPhoneClassic =  "assets/icons/phone-classic.png";

// HTML tartalomba képek
// Hajdúböszörmény címer, körbevágott
const htmlHbCimerTransparent = "asset:assets/images/hb_cimer_transparent.png";


// HTML konstansok
String htmlOpeningString = "<!DOCTYPE html><html><body>";
String htmlClosingString = "</body></html>";

