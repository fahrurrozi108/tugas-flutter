import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "ListView",
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.green,
      appBar: new AppBar(
          backgroundColor: Colors.blue, title: new Text("Project Satu View")),
      body: new ListView(
        children: <Widget>[
          new ListTutorial(gambar:"https://www.greeners.co/wp-content/uploads/2019/01/Cabe-Rawit-Si-Kecil-Pedas-Kaya-Kandungan-Kesehatan-3-1.jpg",judul: "Ini Namanya Buah Cabai",),
          new ListTutorial(gambar:"https://www.pupukorganik.id/wp-content/uploads/2017/10/tanaman-tomat.jpg",judul: "Ini Namanya Buah Tomat",),
          new Text('Nama     : MOH.FAHRURROZI'),
          new Text('Kelas    : Teknik Informatika(A)'),
          new Text('Semester : 3')
        ],
      ),
    );
  }
}

class ListTutorial extends StatelessWidget {

  ListTutorial({this.gambar, this.judul});
  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Image(
              image: NetworkImage(
                  gambar),
              width: 300,
            ),
            new Text(
              judul,
              style: new TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
