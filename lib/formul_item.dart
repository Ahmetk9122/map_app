import 'package:flutter/material.dart';
import 'package:project/constants/app_constants.dart';
import 'package:project/gercek_formul_listesi.dart';
import 'package:project/model/formul.dart';

class FormulItem extends StatelessWidget {
  final Formul listelenenFormul;
  const FormulItem({required this.listelenenFormul, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return /*Card(
      child: ListTile(
        leading: Image.asset("assets/img/"+listelenenFormul.formulKucukResim) ,
        title: Text(listelenenFormul.formulAdi),
        subtitle: Text("Formül Sayfasına Git"),
      ),
    );*/
    InkWell(
      onTap: ()
      {
        print("basılıd");
      },
      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5,color: Colors.grey,style: BorderStyle.solid),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 2,
                                offset: Offset(6,7), // Shadow position
                              ),
                            ],
                            borderRadius:
                                BorderRadius.circular(30), // radius of 10
                            color: Colors.white70
                                 // green as background color
                            ),
                        width: 150,
                        height: 165,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(listelenenFormul.formulAdi,style: Sabitler.CardStyle,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        height: 90,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                          image: AssetImage("assets/img/"+listelenenFormul.formulKucukResim),
                                        )),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 4,
                                    color: Colors.black,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8,left: 130.0),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                    ),
                                  ),
                                  ],
                              ),
                            ),
                          ],
                          
                        ),
                      ),
    );
  }
}