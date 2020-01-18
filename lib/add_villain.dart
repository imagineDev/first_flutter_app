import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddVillain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddVillainState();
  }
}

class _AddVillainState extends State<AddVillain> {
  @override
  Widget build(BuildContext context) {
    String villainName;

    return Column(
      children: <Widget>[
        TextField(
          onChanged: (String userInput) {
            villainName = userInput;
          },
        ),
        Container(
          margin: EdgeInsets.only(top: 16.0),
          child: DropdownButton(items: <DropdownMenuItem<String>>[
            _dropItem("Rokkie"),
            _dropItem("Intermediate"),
            _dropItem("Dangerous"),
          ]),
        )
      ],
    );
  }

  DropdownMenuItem<String> _dropItem(String txt) {
    return DropdownMenuItem(child: Text(txt));
  }
}
