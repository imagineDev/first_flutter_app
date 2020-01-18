import 'package:first_flutter_app/home.dart';
import 'package:first_flutter_app/villains.dart';
import 'package:flutter/material.dart';

const String TITLE = "My First Flutter App";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: TITLE,
    home: Scaffold(
      appBar: AppBar(title: Text(TITLE)),
      floatingActionButton: MyFab(),
      body: Home(),
    ),
    theme: ThemeData(
    ),
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/villains': (context) => VillainsList(),
    },
  ));
}

class MyFab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: Icon(Icons.keyboard_arrow_right),
        onPressed: () {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          } else {
            Navigator.pushNamed(context, "/villains");
          }
        });
  }
}
