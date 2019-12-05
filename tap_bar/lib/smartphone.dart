import 'package:flutter/material.dart';

class Smartphone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Container(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("SmartPhone", style: new TextStyle(fontSize: 30.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
             new Image.asset("img/hp.jpg", width: 200.0,)
          ],
        ),
      ),
    );
  }
}
