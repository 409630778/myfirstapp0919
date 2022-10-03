import 'package:flutter/material.dart';

void main() {
  var appTitle = Text('我的第一個Flutter App'),
      hiFlutter = Text(
        'Hi Flutter. \n'
            '今天是20220926'
        ,
        style: TextStyle(fontSize: 20,color: Colors.red,decoration: TextDecoration.underline),

      );
  var img =Image.network("https://c.tenor.com/8AqUPOC5GMgAAAAi/parrot-party.gif");
  var appBody = GridView.count(
    primary: false,
    padding: const EdgeInsets.all(20),
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    crossAxisCount: 2,
    children: <Widget>[
      Container(
        padding: const EdgeInsets.all(8),
        child: img,
        color: Colors.teal[100],
      ),
      Container(
        padding: const EdgeInsets.all(8),
        child: const Text('Heed not the rabble'),
        color: Colors.teal[200],
      ),
      Container(
        padding: const EdgeInsets.all(8),
        child: const Text('Sound of screams but the'),
        color: Colors.teal[300],
      ),
      Container(
        padding: const EdgeInsets.all(8),
        child:img,
        color: Colors.teal[400],
      ),
      Container(
        padding: const EdgeInsets.all(8),
        child: img,
        color: Colors.teal[500],
      ),
      Container(
        padding: const EdgeInsets.all(8),
        child: const Text('Revolution, they...'),
        color: Colors.teal[600],
      ),
    ],
  );

  var appBar = AppBar(
    title: appTitle,
    backgroundColor: Colors.teal,
  );

  var app = MaterialApp(
    home: Scaffold(
      appBar: appBar,
      body: appBody,
      backgroundColor: Color(0xff00acc1)	,
    ),
  );
  runApp(app);
}
