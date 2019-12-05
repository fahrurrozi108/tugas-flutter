import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new FirstPage(),
    title:"Navigation",
    routes:<String, WidgetBuilder>{
      '/first':(BuildContext context)=> new FirstPage(),
      '/second':(BuildContext context)=>new SecondPage()
    }
  ));
}

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new WillPopScope(
      onWillPop: () async=>false,
      child:new Scaffold(
        backgroundColor: Colors.amber,
      appBar: new AppBar(title: new Text("Orang Orang"), automaticallyImplyLeading: false,),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.supervised_user_circle, size:50.0),
          onPressed: (){
            Navigator.pushNamed(context, '/second');
          }),
        ),
      )
    );
  }
}

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new WillPopScope(
      onWillPop: () async=>false,
      child:Scaffold(
        backgroundColor: Colors.blue,
      appBar: new AppBar(title: new Text("Alaram"), automaticallyImplyLeading: false,),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.access_alarm, size:50.0, color: Colors.red,),
          onPressed: (){
            Navigator.pushNamed(context, '/first');
          },
        ),
      )
    ),
    );
  }
}