// ****************************************************************************
// HB Helpdesk 2020-2021
// (c) Ringer Attila
// ****************************************************************************

// import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hbhuman_v2/human_constants.dart';
import 'package:hbhuman_v2/human_themes.dart';
import 'package:hbhuman_v2/human_types_and_vars.dart';
import 'package:hbhuman_v2/page_document_card.dart';
import 'package:hbhuman_v2/human_colors.dart';
import 'package:hbhuman_v2/human_styles.dart';
import 'package:hbhuman_v2/human_common_widgets.dart';
// import 'package:http/http.dart' as http;
// Hajduhelp csomag
import 'package:hajduhelp/hajduhelp_types_vars.dart';
//import 'package:hajduhelp/hajduhelp.dart';
//import 'package:hajduhelp/hajduhelp_constants.dart';

// Dokumentum lista - kereséssel
// bejövő paraméter: myDocuments
class DocumentsLista extends StatefulWidget {
  final List<Document> myDocuments; // a bejövő (esetleg szűrt) dokumentumlista
  final Provider myProvider;
  DocumentsLista(this.myDocuments, this.myProvider);

  @override
  DocumentsListaState createState() => new DocumentsListaState(myDocuments, myProvider);
} // class DocumentsLista

class DocumentsListaState extends State<DocumentsLista> {
  final List<Document> myDocuments;
  final Provider myProvider;

  final myDocController = TextEditingController();
  bool isSearching = false;
  bool isEmptyList = false;
  List<Document> toListDocuments = new List<Document>.empty();

  DocumentsListaState(this.myDocuments, this.myProvider);
  //List<Document>

  @override
  void dispose() {
    myDocController.dispose();
    // myController.dispose();
    super.dispose();
  }

 @override
  void initState(){
    toListDocuments = List.from(myDocuments);
  // A program elején már letöltöttük a listát - this.getData();
  }

List<Document> documentFilter(String filter) {
   List<Document> filteredDocuments = new List<Document>.empty();
   filteredDocuments = myDocuments.where((document) =>
       document.doctitle.toString().toLowerCase().contains(filter.toLowerCase())).toList();
   return filteredDocuments;
} // documentFilter

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorAppBar,
        title: !isSearching
            ? Text("DOKUMENTUMOK", style: textAppBar,)
            : SizedBox(
                width: 180 * fontScale,
                height: 36 * fontScale,
                child: TextField(
                  autofocus: true,
                  controller: myDocController,
                 style: textSearchInput,
                  decoration: decorationSearchInput,
                ),
            ),
        actions: <Widget>[
          isSearching
              ? Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: IconButton(
                        icon: Icon(Icons.search, size: 24 * fontScale),
                        onPressed: () {
                          // A keresési mezőben megadott string alapján szűrünk
                          toListDocuments = documentFilter(myDocController.text.toString());
                          setState(() {
                            this.isSearching = this.isSearching = false;
                          }); // ) // setState
                        }, // onPressed
                      ),
                     ),
                    Padding(
                      padding: EdgeInsets.only(right: 0.0),
                      child: IconButton(
                        icon: Icon(Icons.cancel, size: 24 * fontScale),
                        onPressed: () {
                          // Újra a teljes listát mutatjuk
                          toListDocuments = List.from(myDocuments);
                          setState(() {
                            this.isSearching = this.isSearching = false;
                            });
                          }, // onPressed
                        ),
                      )
                  ] )
              : IconButton(
                  icon: Icon(Icons.search, size: 24 * fontScale),
                  onPressed: () {
                    setState(() {
                      this.isSearching = this.isSearching = true;
                      }); //setState
                    }, // onPressed
                  )
              ],
          ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        image: DecorationImage(
        image: AssetImage(kHumanBackgroundImage),
        fit: BoxFit.cover),
        ),
        child: toListDocuments.length == 0
          ?  Center(
          child: Container( // telefonáló gomb
            //      width:  MediaQuery.of(context).size.width * 0.7,
            //     margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            //   width:  200,
            height: 40 * fontScale,
            //     padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
            child: ElevatedButton.icon(
              style: nincsTalalatButton,
              label: Text('Nincs találat', style: nincsTalalat),
              icon: Icon(Icons.cancel, color: Colors.white, size: 30 * fontScale,),
              onPressed: () {
                // Újra a teljes listát mutatjuk
                toListDocuments = List.from(myDocuments);
                setState(() {
                  this.isSearching = this.isSearching = false;
                }); // setState
              }, // onPressed
            ),
          ),
        )

        // van legalább egy találat, listaépítés
        : Column(
          children: [
            listProviderCard(context, myProvider, CmdStep.cmdProviderCard),
            Expanded(
              child: SizedBox(
                height: 200,
                child: ListView.builder(
//                  itemCount: toListDocuments == null ? 0 : toListDocuments.length,
                  itemCount:  toListDocuments.length,
                  itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0 ),
                      child: Card(
                        color: colorProviderCardBackground.withOpacity(0.8), //cardOpacity, // Colors.white.withOpacity(0.8),
                        elevation: 5,
                        child: ListTile(
                          contentPadding: EdgeInsets.fromLTRB(circleIconPaddingLeft, circleIconPaddingTop, circleIconPaddingRight, circleIconPaddingBottom),
                          onTap: () {
                            print('Card clicked #$index');
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                            DocumentCard(toListDocuments[index])));
                            }, // onTap
                          title: Text(toListDocuments[index].doctitle, style: textServicesLista),
                          leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            ),
                          child: Icon(Icons.article, size: 25 * circleIconScale, color: colorMainMenuItem,
                          ),
                        ),
                      ),
                    ),
                  );
                }  // itembuilder
              ),
            ),
          ),
        ]
      ),
    ),
      bottomNavigationBar: myBottomAppBar(context),

    );
  }
}  // END class DocumentsLista

//

