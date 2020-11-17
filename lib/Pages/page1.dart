import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class Page1 extends StatefulWidget {
  Page1({Key key}) : super(key: key);

  @override
  _Page1 createState() => new _Page1();
}

class _Page1 extends State<Page1> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: Container(
      color: Colors.red,
    ));
  }
}
