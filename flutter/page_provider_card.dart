/*
****************************************************************************
  HB Helpdesk 2020-2022
  (c) Ringer Attila
****************************************************************************
*/

import 'dart:core';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hbhuman_v2/services/debug_settings.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:hbhuman_v2/human_common_widgets.dart';
import 'package:hbhuman_v2/human_colors.dart';
import 'package:hbhuman_v2/human_styles.dart';
import 'package:hbhuman_v2/human_themes.dart';
import 'package:hbhuman_v2/human_constants.dart';
import 'package:hbhuman_v2/human_types_and_vars.dart';
import 'package:hbhuman_v2/page_services_lista.dart';
// Hajduhelp csomag
import 'package:hajduhelp/hajduhelp_types_vars.dart';
import 'package:hajduhelp/hajduhelp.dart';
import 'package:hajduhelp/hajduhelp_sendemail.dart';
import 'package:hajduhelp/hajduhelp_constants.dart';


class ShowProvider extends StatelessWidget {
  final Provider myProvider;
  ShowProvider(this.myProvider);
//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('SZOLGÁLTATÓ', noShare),
      body: ListView(
        children: <Widget> [
          Container(
            color: colorCardBackground,
            padding: EdgeInsets.all(5),
            child: Center(
              child:  Text(myProvider.name,
                style: appTheme.textTheme.titleLarge,
                textAlign: TextAlign.center,
                textScaleFactor: fontScale,
              ),
            ),
          ),

          showProviderCard(context, myProvider),
          showHtmlSection(context, myProvider.szoveg),
        ]
      ),

      bottomNavigationBar: myBottomAppBar(context),
    );
  }

} // class ShowProvider

// HTML részt iktat be
Widget showHtmlSection(BuildContext context, String htmlContent) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Html(
        data: htmlOpeningString +
          htmlContent +
          htmlClosingString, //html string to be parsed

        style: humanHtmlStyle,
      ),
  ]
   );
}  // Widget showHtmlContent

// Szolgáltató adatkártyája
Widget showProviderCard(BuildContext context, Provider myProvider)  {

  return Column(
          children: <Widget> [
            Container( // cím
              color: colorCardBackground,
              padding: EdgeInsets.all(2),
              child: Center(
                child:  Text(myProvider.irszam + ' ' + myProvider.varos + ', ' + myProvider.utca,
                  style: appTheme.textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                  textScaleFactor: fontScale,
                ),
              ),
            ),
            Container(  // osztalyvezeto
              color: colorCardBackground,
              padding: EdgeInsets.fromLTRB(0, 2, 0, 5),
              child: Center(
                child:  Text('Vezető: ' + myProvider.vezeto,
                  style: stOsztalyVezeto,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            myDivider(),
            Row(
              children: [
                providerIcon(context, Icons.laptop_mac, 'HONLAP', myProvider.provid, CmdIcon.cmdWebpage),
                if (myProvider.facebook.length > 8)  providerIcon(context, FontAwesomeIcons.facebookF, 'FACEBOOK', myProvider.provid, CmdIcon.cmdFacebook) ,
                providerIcon(context, Icons.alternate_email, 'E-MAIL', myProvider.provid, CmdIcon.cmdEmail),
                providerIcon(context, Icons.phone, 'TELEFON', myProvider.provid, CmdIcon.cmdPhone),
              ]
            ),
            myDivider(),
            Row(
              children: [
                providerIcon(context, Icons.accessibility, 'SZOLGÁLTATÁSOK', myProvider.provid, CmdIcon.cmdServices),
                providerIcon(context, Icons.folder_open, 'DOKUMENTUMOK', myProvider.provid, CmdIcon.cmdDocuments),
                       ]
            ),
            myDivider(),

            ]
  );

}  // Widget showProviderCard

// Ikont jelenít meg
// bejövő paraméterek: ikon, ikon alatti felirat, provider azonosító, végrehajtandó parancs
Widget providerIcon(BuildContext ctxt, IconData myIcon, String myTitle, String myProvid, CmdIcon myCmd)  {
  final myProvider = myProvidersLista.firstWhere((element) => element.provid == myProvid);

  return Expanded(
    child:  Container(
      color: colorCardBackground,
      child: Column(

      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colorPrimary,
            boxShadow: [ BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0,3),
              ),
              ]
          ),

            child: InkWell(
              splashColor: colorMainMenuItem,
              onTap: () {
                printDebugMessage(debugSystem, 'Megnyomva: ' + myCmd.toString());

                switch(myCmd) {
                  case CmdIcon.cmdPhone : {
                    hajduhelpLaunchUrl('tel:' + myProvider.callnumber);
                  } break;

                  case CmdIcon.cmdWebpage : {
                    hajduhelpLaunchUrl(myProvider.web);
                  } break;

                  case CmdIcon.cmdFacebook : {
                    hajduhelpLaunchUrl(myProvider.facebook);
                  } break;

                  case CmdIcon.cmdEmail : {
                    printDebugMessage(debugSystem, 'Email: ' + myProvider.email);
                    startEmail(
                      emailAddress: myProvider.email,
                      emailSubject: 'Érdeklődés',
                      emailBody: 'body1',
                      );
                  } break;

                  case CmdIcon.cmdServices : {
                    Navigator.of(ctxt).push(createRoute(ProviderServices(myProvid)));
                  } break;

                  case CmdIcon.cmdDocuments : {
                    Navigator.of(ctxt).push(createRoute(ProviderDocuments(myProvider)));
                  } break;

                  default: { // egyéb webalapú oldalak betöltése
                    //       Navigator.of(myContext).push(createRoute(PageShow()));
                  } break;
                } // switch

              },
              child: Icon(myIcon, size: 30, color: Colors.white,),
                highlightColor: colorMainMenuItem,
                //onPressed: () {
                //print('megnyomva');
                //},
                 ),
  ),

        Text(myTitle, style: textProvIcon,),
      ],
    ),
    ),
  );

}

Widget myDivider() {
  return Container(
    height: 22,
    color: colorCardBackground,
    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
    child: Container(
      height: 2,
      color: colorMainMenuItem,
    ),

  );
}


// Szolgáltató szolgáltatásai
class ProviderServices extends StatelessWidget {
  final String myProvid;
  ProviderServices(this.myProvid);

  List<Serv> filteredServices = new List<Serv>.empty();

  // Szűrjük a listát, csak a szolgáltatóhoz tartozó szolgáltatások maradnak
  List<Serv> serviceFilter(String myProvid) {
    filteredServices = myServicesLista.where((serv) {
        return serv.provid.toString() == myProvid.toString(); }).toList();
    return filteredServices;

  } //


  @override
  Widget build(BuildContext context) {
    final myProvider = myProvidersLista.firstWhere((element) => element.provid == myProvid);

    return Scaffold(
      body: ServicesLista(serviceFilter(myProvid), myProvider),
    );
  }
}

