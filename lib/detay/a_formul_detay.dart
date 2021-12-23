import 'package:flutter/material.dart';

class a_Formulu extends StatefulWidget {
  a_Formulu({Key? key}) : super(key: key);

  @override
  _a_FormuluState createState() => _a_FormuluState();
}

class _a_FormuluState extends State<a_Formulu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("A formül Sayfası"),),
      body: Center(
        child: Text("BAŞARDIM"),
      ),
    );
  }
}