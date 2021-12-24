import 'package:flutter/material.dart';
import 'package:project/Pages/anasayfa.dart';
import 'package:project/Pages/gercek_formul_listesi.dart';
import 'package:project/Pages/ikinci_sayfa.dart';
import 'package:project/Pages/ucuncu_sayfa.dart';
import 'package:project/driver_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home:MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int secilenMenuItem=0;
  List<Widget> tumsayfalar =[];
  late Anasayfa sayfaAna;
  late PageTwo sayfaiki;
  late ucuncuSayfa sayfauc;

  @override
  void initState() {
    super.initState();
    sayfaAna =Anasayfa();
    sayfaiki=PageTwo();
    sayfauc=ucuncuSayfa();
    tumsayfalar = [sayfaAna,sayfaiki,sayfauc];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:DrawerMenu(),
      body:tumsayfalar[secilenMenuItem],
      bottomNavigationBar:bottomnavMenu(),
    );
  }

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
}
