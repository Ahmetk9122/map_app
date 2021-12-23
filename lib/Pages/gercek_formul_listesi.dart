import 'package:flutter/material.dart';
import 'package:project/constants/app_constants.dart';
import 'package:project/data/strings.dart';
import 'package:project/formul_item.dart';
import 'package:project/model/formul.dart';

class GercekFormulListesi extends StatefulWidget {
  late List<Formul> tumFormuller;
   GercekFormulListesi()
   {
     tumFormuller =veriKaynaginiHazirla();
    print(tumFormuller);
   }
   List<Formul> veriKaynaginiHazirla() {
     List<Formul> gecici =[];
    for(int i=0;i<12;i++)
    {
      var formulAdi=Strings.FORMUL_ADLARI[i];
      var formulKucukResim=Strings.FORMUL_KUCUK_RESIM[i];
      Formul eklenecekFormul =Formul(formulAdi,formulKucukResim);
      gecici.add((eklenecekFormul));
    }
    return gecici;
  }
  
  @override
  State<GercekFormulListesi> createState() => _GercekFormulListesiState();
}

class _GercekFormulListesiState extends State<GercekFormulListesi> {
  
  List<Formul> veriKaynaginiHazirla() {
     List<Formul> gecici =[];
    for(int i=0;i<12;i++)
    {
      var formulAdi=Strings.FORMUL_ADLARI[i];
      var formulKucukResim=Strings.FORMUL_KUCUK_RESIM[i];
      Formul eklenecekFormul =Formul(formulAdi,formulKucukResim);
      gecici.add((eklenecekFormul));
    }
    return gecici;
  }
  int secilenMenuItem=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              PopupMenuButton(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text("Ahmet KARABUDAK"),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Text("Yavuz AKILLI"),
                          value: 2,
                        ),
                        PopupMenuItem(
                          child: Text("Yasin KAYA"),
                          value: 3,
                        ),
                      ]),
            ],
            expandedHeight: 220,
            pinned: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            backgroundColor: Colors.teal.shade900,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("MAP APP",style:Sabitler.baslikStyle ,),
              centerTitle: true,
              background: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                child: Image.asset(
                  "assets/img/0.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
         SliverPadding(
           padding: EdgeInsets.all(8),
           sliver: SliverGrid(
             delegate: SliverChildBuilderDelegate(
               _dinamikElemanUretenFonksiyon,childCount:widget.tumFormuller.length
             ),
             gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
               mainAxisSpacing: 25,
               crossAxisSpacing: 25,
               mainAxisExtent: 170
               )),
         )
  
         /*
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: tumFormuller.length,
              itemBuilder: (BuildContext context, index) {
                return FormulItem(listelenenFormul: tumFormuller[index]);
              }),
            )
            )
            */
        ],
      ),
      // bottomNavigationBar:bottomnavMenu(),
      );
  
  }
/*
BottomNavigationBar bottomnavMenu() {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label:"Anasayfa",
        backgroundColor: Color.fromRGBO(26, 55, 77, 1)),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label:"Arama",
        backgroundColor: Color.fromRGBO(64, 104, 130, 1)),
      BottomNavigationBarItem(
        icon: Icon(Icons.add),
        label:"Ekleme",
        backgroundColor:  Color.fromRGBO(105, 152, 171, 1)),
        
    ],
    type: BottomNavigationBarType.shifting,
    currentIndex:secilenMenuItem,
    onTap: (index)
    {
      setState(() {
        secilenMenuItem=index;
      });
    },
    
    );
  }
*/ 

 
  Widget? _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return FormulItem(listelenenFormul: widget.tumFormuller[index]);
  }
}
