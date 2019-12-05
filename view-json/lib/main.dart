import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(new MaterialApp(title: "Project 2", home: new Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List dataJson;

  Future<String> ambildata() async {
    http.Response hasil = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Accept": "application/json"});
    this.setState(() {
      dataJson = jsonDecode(hasil.body);
    });
  }

  @override
  void initState() {
    this.ambildata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Project 2"),
      ),
      body: ListView.builder(
          itemCount: dataJson == null ? 0 : dataJson.length,
          itemBuilder: (context, index) {
            return new Container(
              padding: new EdgeInsets.all(20.0),
              child: Card(
                child: new Container(
                    padding: EdgeInsets.all(20.0),
                    child: new Column(
                      children: <Widget>[
                        new Text(dataJson[index]['title'],
                            style: new TextStyle(
                                fontSize: 20.0, color: Colors.blue)),
                        new Text(dataJson[index]['body'])
                      ],
                    )),
              ),
            );
          }),
    );
  }
}
