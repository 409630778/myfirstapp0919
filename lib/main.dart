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
  var appBody = Row(
    children: const<Widget> [
      Expanded(child: Text('OwO',textAlign: TextAlign.center, style: TextStyle(color: Colors.pink),),),
      Expanded(child: Text('>w<',textAlign: TextAlign.center,style: TextStyle(color: Colors.purple),),),
      Expanded(child: FittedBox(
        fit: BoxFit.contain,
        child: FlutterLogo(),
      )
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
