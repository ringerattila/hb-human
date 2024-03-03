// ****************************************************************************
// HB Helpdesk 2020-2021
// (c) Ringer Attila
// ****************************************************************************

import 'package:flutter/material.dart';
import 'package:hbhuman_v2/human_constants.dart';
import 'package:hbhuman_v2/human_styles.dart';
import 'package:hbhuman_v2/human_themes.dart';
import 'package:hbhuman_v2/human_common_widgets.dart';
import 'package:hbhuman_v2/human_types_and_vars.dart';
//import 'route_animation.dart';
import 'package:hbhuman_v2/human_colors.dart';
//import 'package:url_launcher/url_launcher.dart';
// Hajduhelp csomag
import 'package:hajduhelp/hajduhelp_types_vars.dart';
//import 'package:hajduhelp/hajduhelp.dart';
//import 'package:hajduhelp/hajduhelp_constants.dart';


// Dokumentum kártya mutatása
// Bejövő paraméter: Document típus

class DocumentCard extends StatefulWidget {
  final Document curDocument; // a megjelenítendő dokumentum
  DocumentCard(this.curDocument);

  @override
  DocumentCardState createState() => new DocumentCardState(curDocument);
}

class DocumentCardState extends State<DocumentCard> {
  final Document curDocument; // a megjelenítendő dokumentum
  final myController = TextEditingController(text: '');
  bool isSearching = false;
  bool isEmptyList = false;
  Color mailBorder = colorPrimary;
  //int docIndex;
  DocumentCardState(this.curDocument);

  @override
  void dispose() {
    myController.dispose();
    // myController.dispose();
    super.dispose();
  }  // dispose

  //this.setState() {

//}


  @override
  Widget build(BuildContext context){
    String provId = curDocument.provid;  // Megkeressük a szolgáltató nevét
    var myProvider = myProvidersLista.firstWhere((element) => element.provid == provId);

    String pathToPdf = myProvider.folder + '/nyomtatvany/' + curDocument.docfilename;

    return Scaffold(
      appBar: myAppBar(mDocuments.myMAppTitle, urlDocumentDownload+pathToPdf),
      body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                image: DecorationImage(
                    image: AssetImage(kHumanBackgroundImage),
                    fit: BoxFit.cover),
              ),
              child: Center(
                child: Card(
                  shape: RoundedRectangleBorder(
           //         side: BorderSide(color: colorDocumentCardBorder, width: 0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  elevation: 5, // 10
                  color: cardOpacity, // Colors.white.withOpacity(0.7),
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(  // csak üres helynek
                        height: 15,
                      ),
                      cardLabel('Dokumentum neve:'),
                      cardTitleRow(curDocument.doctitle, context),
                      Container(
                        width: 250 * fontScale,
                        height: 40 * fontScale,
                        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 0),
                        child: ElevatedButton(

                          style: ElevatedButton.styleFrom(
                            elevation: 5,
                            backgroundColor: colorButton,
                            foregroundColor: colorButtonText,
                         //   padding: EdgeInsets.all(0),
                            ),

                          child: Text('MEGNÉZEM', style: textTelefon,),
                          onPressed: () {
                              var url = urlPDFDownload + pathToPdf;
                           //   var _url = Uri.tryParse(url);
                              hajduhelpLaunchUrl(url);
//                              hajduhelpLaunchPdf(url);
                           //   myOpenUrl(_url!);
//                              launch(url); //}
                           } // onPressed
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        width: 250 * fontScale,
                        height: 40 * fontScale,
                        //   child: GestureDetector(
                        child:  TextField(
                          autofocus: true,
                          controller: myController,
                          style: TextStyle(
                            color: mailBorder,
                            fontSize: 16.0 * fontScale,
                          ),
                          decoration: InputDecoration(
                            filled: false,
                          //  fillColor: Colors.green,
                            contentPadding: EdgeInsets.all(10.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: colorAppBar),
                            ),
                            hintText: "E-mail cím",
                            hintStyle: textEmailHintInput,
                          ),
                          onChanged: (text) {
                            setState(() {
                              mailBorder = (Colors.blue[900])!; //int docIndex;
                            }); // setState
                          },  // onChanged
                        ),
                      ),
                      Container(
                        width: 250 * fontScale,
                        height: 40 * fontScale,
                        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 0),
                        child:  ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 5,
                            backgroundColor: colorButton,
                            foregroundColor: colorButtonText,
                         //   padding: EdgeInsets.all(10),

                          ),
                          //  textColor: Colors.green[900],
                          child: Text('KÉREM E-MAILBEN', style: textTelefon),
                          //  child: const Text('  KÉREM\nE-MAILBEN'),
                          onPressed: () {
                            var eMail = myController.text.toString();
                            if (eMail.contains('@') && eMail.contains('.')) {
                              sendEmail(eMail, curDocument.docid);
                              setState(() {
                                mailBorder = colorPrimary; //int docIndex;
                                myController.text = 'A dokumentumot elküldtük.';
                              } );  // setstate
                            } else {
                              setState(() {
                                mailBorder = (Colors.red[700])!; //int docIndex;
                              } );  // setstate
                            } // else
                          },  // onPressed
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 7),
                              child: Image.asset('assets/images/hb_cimer_transparent@3.png'),
                                  width: 80 * circleIconScale,

                              //Image.asset('assets/images/providers/' +
                             //     myProvider.indexpic.toString(), height: 50,
                              //  width: 50,),
                            ),



                          //  CircleAvatar(
                          //    backgroundImage: curDocument.provid == "117"
                          //        ?  AssetImage(iconKorm)  : AssetImage(iconHbosz),
                          //    radius: 20 * circleIconScale, ),

                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0),
                              child: InkWell(
                          //      onTap: () {
                               //   myAktMenuItem = provPage;
                          //        Navigator.push(context,
                           //           MaterialPageRoute(builder: (context) => PageShow()));
                         //       },
                                child: Column(
                                  children: [
                                    Center( child: getProvName(curDocument.provid)),
                                    getProvAddress(curDocument.provid),

                                  ],
                              )
                              ),
                            ),
                          ], // children
                        ),
                      ),
                    ],
                  ),

                ),
              ),
            ),
          ]
      ),
      bottomNavigationBar: myBottomAppBar(context),
    );
  }
} // DocumentCard
