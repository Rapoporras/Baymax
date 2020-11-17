import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class Page3 extends StatefulWidget {
  Page3({Key key}) : super(key: key);

  @override
  _Page3 createState() => new _Page3();
}

class _Page3 extends State<Page3> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: Container(
      color: Colors.yellow,
    ));
  }
}
