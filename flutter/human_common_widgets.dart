library helpdesk_widgets;

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:core';
// import 'package:hb_helpdesk4/constants.dart';

//import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:hbhuman_v2/human_styles.dart';
import 'package:hbhuman_v2/human_types_and_vars.dart';
import 'package:hbhuman_v2/main.dart';
import 'package:hbhuman_v2/pages/human_impresszum.dart';
import 'package:hbhuman_v2/services/debug_settings.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:hbhuman_v2/human_constants.dart';
import 'package:hbhuman_v2/human_colors.dart';
import 'package:hbhuman_v2/human_themes.dart';
//import 'package:webview_flutter/webview_flutter.dart';
//import 'route_animation.dart';
import 'package:hbhuman_v2/page_documents_lista.dart';
import 'package:hbhuman_v2/page_provider_card.dart';
import 'package:hbhuman_v2/human_html_show_local.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:hbhuman_v2/human_maps.dart';

//import 'Constants.dart' as Constants;
// Hajduhelp csomag
import 'package:hajduhelp/hajduhelp_types_vars.dart';
import 'package:hajduhelp/hajduhelp.dart';
import 'package:hajduhelp/hajduhelp_constants.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

/*
void contactEmail(String emailCim) async {
var uri = 'mailto:$emailCim?subject=$mailSubject&body=$mailBody';
var encodedUri = Uri.encodeFull(uri);
print('Encoded: $encodedUri');
if (await canLaunchUrl(Uri.parse(encodedUri))) {
  await launchUrl(Uri.parse(encodedUri));
  }
}
*/
/*
void hajduhelpLaunchUrl(String url) async {
  var _uri = Uri.parse(Uri.encodeFull(url));  // ékezetes betűket, szünetet kódoljuk
  printDebugMessage(debugSystem, 'Encoded: $_uri');
  if (await canLaunchUrl(_uri)) {
    await launchUrl(_uri);
    } else {
      printDebugMessage(debugSystem, 'Nem nyitható meg.');
      }
}  // end of hajduhelpLaunchUrl
*/

Future<void> hajduhelpLaunchUrl(String url) async {
  var _uri = Uri.parse(Uri.encodeFull(url));  // ékezetes betűket, szünetet kódoljuk
  printDebugMessage(debugSystem, 'Encoded: $_uri');
  if (await launchUrl(_uri)) {
   // await launchUrl(_uri);
    await launchUrl(_uri, mode: LaunchMode.externalApplication,);
  } else {
    printDebugMessage(debugSystem, 'Nem nyitható meg.');
    throw 'Nem nyitható meg';
  }
}  // end of hajduhelpLaunchUrl

Future<void> hajduhelpLaunchPdf(String url) async {
  var _uri = Uri.parse(Uri.encodeFull(url));  // ékezetes betűket, szünetet kódoljuk
  printDebugMessage(debugSystem, 'Encoded: $_uri');
  if (await launchUrl(_uri)) {

 //   await launchUrl(_uri, mode: LaunchMode.externalApplication,);

    PDF(
      swipeHorizontal: true,
    ).cachedFromUrl(_uri.toString());

 //  await launchUrl(_uri);
  } else {
    printDebugMessage(debugSystem, 'Nem nyitható meg.');
    throw 'Nem nyitható meg';
  }
}  // end of hajduhelpLaunchUrl




/*
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
*/





// felső Appbar - A Titlé-t a myMenuItem.myMTitle változóból írja ki
PreferredSizeWidget myAppBar(String barTitle, String contentToShare) {
  return AppBar(
    //   backgroundColor: cAppBarColor,
    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
    title: Text(barTitle,
        style: textAppBar),
    actions: <Widget>[
      if (contentToShare != '') IconButton(
        icon: Icon(
          Icons.share,
          color: Colors.white,
        ),
        onPressed: () {
          Share.share(contentToShare);
// do something
        },
      )
    ],
  );
}



Widget myBottomAppBar(BuildContext myContext) {
  if (vanInternet == false)
  { return noInternet(myContext); }
  else { return myBottomAppBar2(myContext); }

}

//Bottom navigation bar, footer
Widget myBottomAppBar2(BuildContext myContext) {
  return BottomAppBar(
    //  color: cBottomAppBarColor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          icon: Icon(Icons.home, size: 24 * fontScale),
          color:  colorBottomAppBarText,
          onPressed: () {
           //     Navigator.of(myContext).push(createRoute(PageMainMenu()));
            Navigator.pushReplacement(myContext, PageRouteBuilder(
                        pageBuilder: (context, _, __,) => PageMainMenu(),
                        transitionDuration: Duration(seconds: 0)));
           }),
      Expanded(
        child: Text(kfooterText,
          textAlign: TextAlign.center,
          style: textBottomAppBar, ),
        ),
      ],
    ),
  );
}

Widget noInternet(BuildContext myContext) {
  return BottomAppBar(
      color: colorMainMenuItem,
      child: Row(
        children: [
          IconButton(
              icon: Icon(Icons.home), color:  colorBottomAppBarText, onPressed: () {
            Navigator.of(myContext).push(createRoute(PageMainMenu()));
          }),
          Spacer(),
          Text("Nincs internet kapcsolat!",
            style: TextStyle(color: Colors.white), ),
          Spacer(),
        ],
      )
  );
}




// Csak a következő metódus miatt kell
Widget noOpenUrl(String myTitle) {
  double myWidth = 300;

  return Container(
    //  color: Colors.amber,
    width: myWidth,
    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
    child: Text(
      myTitle,
      style: textCardTitleRow,
      textAlign: TextAlign.center,
    ),
  );
} //

/*
// Dokumentum megnyitása
Future<Widget> myOpenUrl(String showUrl) async {
  if (await canLaunch(showUrl)) {
    await launch(showUrl);
    } else {
    return noOpenUrl("Nem nyitható");
    throw 'Could not launch $showUrl';
  }
}
*/
void  myOpenUrl(Uri showUrl) async =>
  await canLaunchUrl(showUrl) ? await launchUrl(showUrl) : throw 'Could not launch $showUrl';

// Kártya címsora
Widget cardTitleRow(String cardTitle, BuildContext myContext) {
  double myWidth = 300;
  myWidth = MediaQuery.of(myContext).size.width;

  return Container(
  //  color: Colors.amber,
    width: myWidth,
    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
    child: Text(
      cardTitle,
      style: textCardTitleRow,
      textAlign: TextAlign.center,
    ),
  );
} // cardTitleRow

// Kártya címkéi
// ügykártya és dokumentumkártya használja
Widget cardLabel(String myLabel) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
    alignment: Alignment.center,
    child: Text( myLabel,
      style: textCardLabel,
    ),
  );
} // cardLabel

// Ügylap vastagbetűs sor
Widget ugyBoldRow(String myRow) {
  return Container(
    width: double.infinity,
    alignment: Alignment.center,
    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
    child: Text(myRow,
      style: textBoldRow,
    ),
  );
}
/*
//
class PageWebView extends StatefulWidget {
  final String pageUrl;
  PageWebView(this.pageUrl);

  // Constants.MyMenuItem myMenuItem;
  @override
  PageWebViewState createState() => PageWebViewState(pageUrl);
}

class PageWebViewState extends State<PageWebView> {
  String pageUrl;
  PageWebViewState(this.pageUrl);

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }
  @override
  Widget build(BuildContext context) {
    return WebView(
   //   initialUrl: myAktMenuItem.myMTarget,
      initialUrl: pageUrl,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
*/

Widget getProvName(String provid) {
  var provIndex = myProvidersLista.indexWhere((provider) =>
  provider.provid == provid);
  if (provIndex == -1) { // ha nincs a hivatkozott szolgáltató
    return Text(''); // null lenne, csak nem lehet
  } else { // van szolgáltató
   // return Text(
      String modCardTitle = myProvidersLista[provIndex].cardtitle;
      while (modCardTitle.contains('xx')) {
      modCardTitle = modCardTitle.replaceFirst(new RegExp(r'xx'), '\n');
      }
  //    modCardTitle = modCardTitle + '\n'
 //         + myProvidersLista[provIndex].irszam + ' ' + myProvidersLista[provIndex].varos + '\n' +
 //         myProvidersLista[provIndex].utca;
       return Text(modCardTitle, style: textDocCardProviderName, textAlign: TextAlign.center,);
      }  // else
} // Widget

Widget getProvAddress(String provid) {
  var provIndex = myProvidersLista.indexWhere((provider) =>
  provider.provid == provid);
  if (provIndex == -1) { // ha nincs a hivatkozott szolgáltató
    return Text(''); // null lenne, csak nem lehet
  } else { // van szolgáltató
   // return Text(
      String modCardAddress = myProvidersLista[provIndex].irszam;
      modCardAddress = modCardAddress + ' ' + myProvidersLista[provIndex].varos;
      modCardAddress = modCardAddress + '\n' + myProvidersLista[provIndex].utca;
      return Text(modCardAddress, style: textDocCardProviderAddress, textAlign: TextAlign.center,);
      }  // else
} // Widget

// Email küldés
Future<String> sendEmail(String emailAddress, String docId) async {
  var emailPostData = { "emailaddress": "", "docid": ""};
  String mygetMessage = "";
  String myEmailAck = ""; // Ezt adja vissza a szerver, sikeres, vagy sikertelen küldés
  emailPostData["emailaddress"] = emailAddress;  // bejövő paraméterek a Post datába
  emailPostData["docid"] = docId;
  emailPostData["apptype"] = "social";
  //  print ('postData: $postData');
  // Szolgáltatók listája leltöltés
  try {
    var responseEmail = await http.post(
      Uri.parse(urlSendMail),
      headers: {'Content-Type': 'application/json; charset=UTF-8',},
      body: json.encode(emailPostData),
    ).timeout(Duration(seconds: 3)); //http.post
    myEmailAck = json.decode(responseEmail.body);
    mygetMessage = responseEmail.body;
  } // end of try
  on TimeoutException catch (_) {
    //   vanInternet = false;
    printDebugMessage(debugSystem, 'timeout');
  }
  on SocketException catch (_) {
//    vanInternet = false;
    printDebugMessage(debugSystem,'socket error');
  }

  printDebugMessage(debugSystem,myEmailAck);
  printDebugMessage(debugSystem,'Posted: $emailPostData');
  printDebugMessage(debugSystem,'Received: $mygetMessage');
  return myEmailAck;
}

class PageShow extends StatelessWidget {
  const PageShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 200,
      height: 300,
      child: Text('WebviewScaffold lesz'),
    );
  }
} // END Class - PageShow



//******************************************************************************
// HB Human common widgets
// Telefonszám gomb

Widget impresszumButton(BuildContext myContext) {
  return Column(
    children: [
      Container( // telefonáló gomb
        color: colorCardBackground,
        width:  MediaQuery.of(myContext).size.width,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
  //   width: 200 * fontScale,
        height: 50 * fontScale,
        padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorPrimary, // gomb háttere
            foregroundColor: Colors.white, // szöveg színe
            disabledForegroundColor: Colors.blue, // disable button color
            elevation: 5,
            ),
          label: Text('IMPRESSZUM', style: textTelefon),
          icon: Icon(Icons.info, color: Colors.white, size: 24 * fontScale),
          onPressed: () {
            printDebugMessage(debugSystem, 'Impresszum');
            Navigator.of(myContext).push(createRoute(ShowLocalHtml('IMPRESSZUM', contentImpresszum)));
        //   launch('tel://' + callNumber); //  myAktMenuItem = myMenuItem;
            },
    ),
  ),
      dataDebug ? showLoadTimes(myDataDebugList, myContext) : Text(''),
    ]
  );
}

// JSON letöltési hiba jelzése
Widget jsonErrorPage(BuildContext context) {
//    var displaySzelesseg = MediaQuery.of(context).size.width;
  return Scaffold(
    appBar: myAppBar(kAppBarMainTitle, noShare),
    body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(kHumanBackgroundImage),
                fit: BoxFit.cover),
          ),
          child: Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Center(
                  child: SizedBox(
                    width: 300,
                    height: 250,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      elevation: 5,
                      // 10
                      color: cardOpacity,
                      // Colors.white.withOpacity(0.7),
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Column(
                        // mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            // Switch out 2 lines below to play with TableCalendar's settings
                            //-----------------------
                            //   _buildTableCalendar(),
                            Container(
                              margin: EdgeInsets.fromLTRB(30, 10, 10, 10),
                              // width: 300.0,
                              child: Text(''),
                            ),
                            Expanded(
                              child: Text('Adat letöltési hiba!\n\nNincs internet kapcsolat, \nvagy szerver hiba történt.',    textAlign: TextAlign.center),
                            ),

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 5,
                                backgroundColor: colorButton,
                                foregroundColor: colorButtonText,
                                //   padding: EdgeInsets.all(10),
                              ),
                              //  textColor: Colors.green[900],
                              child: Text('Újra megpróbálom', style: textTelefon),
                              //  child: const Text('  KÉREM\nE-MAILBEN'),
                              onPressed: ()  {
                                vanHir = false;
                                Navigator.pushReplacement(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, _, __,) => HumanApp(),
                                      transitionDuration: Duration(seconds: 0),
                                    ));
                              }, // onPressed
                            ),

                            const SizedBox(height: 20.0),


                          ]
                      ),
                    ),
                  ),
                ),



                //          Text('JSON error'),
              ],
            ),
          ),
        ),
//          if (vanHir) showKozlemeny(context, kozlemenyTitle, kozlemenySzoveg),
      ],
    ),
    bottomNavigationBar: myBottomAppBar(context),
  );
}




// Dokumentumaink gomb
Widget providerDocuments(String provid) {
  return Container( //
    color: colorCardBackground,
//      width:  MediaQuery.of(context).size.width * 0.7,
    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
    width: 200 * fontScale,
    height: 50 * fontScale,
    padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
    child: ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorPrimary, // gomb háttere
        foregroundColor: Colors.white, // szöveg színe
        disabledForegroundColor: Colors.blue, // disable button color
        elevation: 5,
      ),
      label: Text('Dokumentumaink', style: textTelefon),
      icon: Icon(Icons.folder_open, color: Colors.white, size: 24 * fontScale),
      onPressed: () {
       // print('Telefonszám: ' + callNumber);
       // launch('tel://' + callNumber); //  myAktMenuItem = myMenuItem;

      },
    ),
  );
}

// Szolgáltatásaink gomb
Widget providerServices(String provid) {
  return Container( //
    color: colorCardBackground,
//      width:  MediaQuery.of(context).size.width * 0.7,
    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
    width: 200 * fontScale,
    height: 50 * fontScale,
    padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
    child: ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorPrimary, // gomb háttere
        foregroundColor: Colors.white, // szöveg színe
        disabledForegroundColor: Colors.blue, // disable button color
        elevation: 5,
      ),
      label: Text('Szolgáltatásaink', style: textTelefon),
      icon: Icon(Icons.accessibility, color: Colors.white, size: 24 * fontScale),
      onPressed: () {
       // print('Telefonszám: ' + callNumber);
       // launch('tel://' + callNumber); //  myAktMenuItem = myMenuItem;

      },
    ),
  );
}

// Szolgáltató dokumentumai
class ProviderDocuments extends StatelessWidget {
  final Provider myProvider;
  ProviderDocuments(this.myProvider);

  final List<Document> filteredDocuments = new List<Document>.empty();

  List<Document> documentFilter(String myProvid) {
    final filteredDocuments = myDocumentsLista.where((doc) {
        return doc.provid.toString() == myProvid.toString();  }).toList();
    return filteredDocuments;
  } //

  @override
  Widget build(BuildContext context) {
    //  serviceFilter(myProvid);
//    myUrl = urlUgyek;
    return Scaffold(
      body: DocumentsLista(documentFilter(myProvider.provid), myProvider),
    );
  }
}

/*
  class ProviderMaps extends StatelessWidget {
    final Provider myProvider;

    ProviderMaps(this.myProvider);

    //final availableMaps = await MapLauncher.installedMaps;
    //print(availableMaps); // [AvailableMap { mapName: Google Maps, mapType: google }, ...]

    //await availableMaps.first.showMarker(
    //coords: Coords(37.759392, -122.5107336),
    //title: "Ocean Beach",
    //);

    @override
    Widget build(BuildContext context) {
      //  serviceFilter(myProvid);
//    getMaps();
      var mapUrl = urlShowMap + '/' + myProvider.provid;
      // launch(mapUrl);
      return Scaffold(
        appBar: myAppBar('TÉRKÉP', noShare),
        body: Text('Térkép'),
  //      WebView(
  //        initialUrl: mapUrl,
  //        javascriptMode: JavascriptMode.unrestricted,),
        bottomNavigationBar: myBottomAppBar(context),
      );
    } // class ProviderMaps
  }
*/
void startMap(BuildContext context, String myTitle, String lat, String long) {
  printDebugMessage(debugSystem, "Title: " + myTitle + 'Coord: ' + lat + ' - ' + long);
  if (Platform.isAndroid) {
  printDebugMessage(debugSystem, "Android maps");
 // launchMap(lat, long);
  Navigator.of(context).push(createRoute(ShowGoogleMap(myTitle, lat, long)));
  //MyGoogleMap2();
  }  else {
  printDebugMessage(debugSystem, "Apple maps");

_launchAppleMaps(myTitle, lat, long);
  }

}



void _launchAppleMaps(String myTitle, String lat, String long) async {
  var myLat = double.parse(lat);
  var myLong = double.parse(long);
  final availableMaps = await MapLauncher.installedMaps;
  printDebugMessage(debugSystem, availableMaps.toString()); // [Availabl
//  await canLaunch("iosamap") ? await launch("iosamap") : throw 'Could not launch Apple Maps';
  await availableMaps.first.showMarker(
    coords: Coords(myLat, myLong),
    title: myTitle,
  );
}


void launchMap(String lat, String long) async{
  var mapSchema = 'geo:$lat,$long';
  if (await canLaunchUrl(Uri.parse(mapSchema))) {
    await launchUrl(Uri.parse(mapSchema));
  } else {
    throw 'Could not launch $mapSchema';
  }
}




// Listákon megjeleníti a szolgáltató nevét,
Widget listProviderCard(BuildContext myContext, Provider myProvider, CmdStep myCmdStep) {
  return Padding(
    padding: const EdgeInsets.symmetric(
        vertical: 1.0, horizontal: 4.0),
    child: Card(
// color: cardOpacity, // Colors.white.withOpacity(0.8),
      color: colorCardHeadlineBackground,
      elevation: 5,
      child: InkWell(
        child: Row(
          children: [
            Container(
              color: colorMainMenuItem,
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 7),
                child: Image.asset('assets/images/providers/' +
                    myProvider.indexpic.toString(), height: 50,
                  width: 50,),
              ),
            ),
            Flexible(
//  padding: EdgeInsets.all(10),
              child: Text(
                myProvider.cardtitle, style: textCardDocProvider,),
            ),
          ],
        ),

        onTap: () {
          printDebugMessage(debugSystem, 'Card clicked # ' + myProvider.name);
          switch(myCmdStep) {
            case CmdStep.cmdProviderCard :
              {
                Navigator.push(myContext, MaterialPageRoute(builder: (context) =>
                      ShowProvider(myProvider)));
              }
              break;

            case CmdStep.cmdProviderDocuments :
              {
                Navigator.push(myContext, MaterialPageRoute(builder: (context) =>
                        ProviderDocuments(myProvider)));
              }
              break;

            case CmdStep.cmdProviderMaps :
              {
           //     Navigator.push(myContext, MaterialPageRoute(builder: (context) =>
           //         ProviderMaps(myProvider)));
                startMap(myContext, myProvider.cardtitle, myProvider.lat, myProvider.lng);
              }
              break;

          } // switch

        }, // onTap

      ),
    ),
//       ),
  );
} // Widget listProviderCard
