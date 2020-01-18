import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VillainsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Villains in Gotham"),
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context);
          }),
        ),
        body: getListView(),
      ),
    );
  }

  ListView getListView() {
    return ListView(
      children: <Widget>[
        _tile(1, "Joker"),
        _tile(2, "Scarecrow"),
        _tile(3, "Penguine"),
        _tile(4, "Poison Ivy"),
        _tile(5, "Two Face"),
        _tile(6, "Bane"),
        _tile(7, "Ra'al Ghul"),
      ],
    );
  }

  ListTile _tile(int index, String name) {
    return ListTile(
      leading: Text("$index", textAlign: TextAlign.center),
      title: Text(name),
      trailing: Icon(Icons.star),
    );
  }
}
