/*
****************************************************************************
  HB Helpdesk 2020-2022
 (c) Ringer Attila
***************************************************************************
*/

import 'package:flutter/material.dart';
import 'package:hbhuman_v2/human_styles.dart';
import 'package:hbhuman_v2/human_common_widgets.dart';
import 'package:hbhuman_v2/human_types_and_vars.dart';
import 'package:hbhuman_v2/page_provider_card.dart';
import 'package:hbhuman_v2/human_colors.dart';
import 'package:hajduhelp/hajduhelp_constants.dart';


// Szolgáltatók lista - kereséssel
class ProvidersLista extends StatefulWidget {
  final List<Provider> myProvidersLista; // a bejövő (esetleg szűrt) dokumentumlista
  ProvidersLista(this.myProvidersLista);

  @override
  ProvidersListaState createState() => new ProvidersListaState(myProvidersLista);
} // class UgyekLista

class ProvidersListaState extends State<ProvidersLista> {
  final List<Provider> myProvider;
  final myController = TextEditingController();
  bool isSearching = false;
  bool isEmptyList = false;

  List<Provider> toListProviders = new List<Provider>.empty();

  ProvidersListaState(this.myProvider);


  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

   @override
   void initState(){
     //  A program elején már letöltöttük a listát this.getData();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: myAppBar("SZOLGÁLTATÓK", noShare),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          image: DecorationImage(
          image: AssetImage(kHumanBackgroundImage),
          fit: BoxFit.cover),
          ),

        child:  ListView.builder(
//              itemCount: myProvidersLista == null ? 0 : myProvidersLista.length,
              itemCount :  myProvidersLista.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 1.0, horizontal: 4.0),
                  child: Card(
                    color: colorProviderCardBackground.withOpacity(0.9),
                    elevation: 5,
                    child: InkWell(
                      child:  Row(
                      children: [
                      Container(
                        color: colorMainMenuItem,
                        margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Image.asset('assets/images/providers/' + myProvidersLista[index].indexpic.toString(), height: 100, width: 100, ),
                        ),
                      ),
                      Flexible(
                          child: Text(myProvidersLista[index].cardtitle, style: textCardProvider,),
                        ),
                        ],
                    ),
                      onTap: () {
                        print('Card clicked #$index');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowProvider(myProvidersLista[index])));
                      }, // onTap
                    ),
                  ),
                );
              },
            ),
      ),
      bottomNavigationBar: myBottomAppBar(context),
    );
  }
}
