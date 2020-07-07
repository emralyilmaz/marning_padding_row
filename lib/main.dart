import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout"),
      ),
      // body: Container(
      //   color: Colors.red,
      //   width: 100,
      //   height: 100,
      //   // margin: EdgeInsets.symmetric(horizontal: 100),
      //   padding: EdgeInsets.all(10),
      //   child: Container(
      //     color: Colors.green,
      //     child: Text("Merhaba"),
      //     padding: EdgeInsets.only(top: 5),
      //   ),
      // )
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Row"),
          FlatButton(
              onPressed: () {}, child: Text("Tıkla"), color: Colors.amber),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(20),
            child: Text("container"),
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.red,
                child: Text("1"),
              ),
              Container(
                color: Colors.green,
                child: Text("2"),
              )
            ],
          )
        ],
      ),
    );
  }
}
