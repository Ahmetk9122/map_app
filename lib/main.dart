import 'package:flutter/material.dart';
import 'package:project/formul_listeleri.dart';
import 'package:project/gercek_formul_listesi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home:GercekFormulListesi());
  }
}
