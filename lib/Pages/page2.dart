import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class Page2 extends StatefulWidget {
  Page2({Key key}) : super(key: key);

  @override
  _Page2 createState() => new _Page2();
}

class _Page2 extends State<Page2> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: Container(
      color: Colors.green,
    ));
  }
}
