import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 250,
      height: 400,
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Center(
                    child: Text(
                  "Hello Master Wayne",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 46.0,
                      fontStyle: FontStyle.italic,
                      fontFamily: "FallIsComing"),
                )),
              )
            ],
          ),
          LogoImageAsset(),
          getButtonGridLikeUi(context)
        ],
      ),
    ));
  }
}

/*
 * Refer
 * https://www.youtube.com/watch?v=RJEnTRBxaSg
 *
 * Same source code explaination can be found at
 * https://github.com/bizz84/layout-demo-flutter
 * 
 **/
Widget getButtonGridLikeUi(BuildContext context) {
  return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //AxisAlignment works only on MainAxisSize.max
      children: <Widget>[
        Column(
          children: <Widget>[
            RaisedButton(
                child: Text("Snackbar"),
                onPressed: () {
                  showSnackbar(context);
                }),
            RaisedButton(
              child: Text("Alert"),
              onPressed: () {
                showAlertDialog(context);
              },
            )
          ],
        ),
        Column(children: <Widget>[
          RaisedButton(child: Text("TODO1"), onPressed: () {}),
          RaisedButton(
            child: Text("TODO2"),
            onPressed: () {},
          )
        ])
      ]);
}

void showSnackbar(BuildContext scaffoldContext) {
  var snackBar = SnackBar(
    content: Text("This is snackbar"),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: () {
        //Log.d or System.out.println
        debugPrint("Undo was clicked");
      },
    ),
  );

  //Snackbar should always be shown from Scaffold
  Scaffold.of(scaffoldContext).showSnackBar(snackBar);
}

void showAlertDialog(BuildContext context) {
  var alert = AlertDialog(
      title: Text("This is Title"),
      content: Text("This is the content of the Alert Dialog"));

  showDialog(context: context, child: alert);
}

class LogoImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage asset = AssetImage("images/logo.png");
    Image image = Image(
      image: asset,
      width: 200,
      height: 100,
    );
    return image;
  }
}
