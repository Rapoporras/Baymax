import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class Page1 extends StatefulWidget {
  Page1({Key key}) : super(key: key);

  @override
  _Page1 createState() => new _Page1();
}

class _Page1 extends State<Page1> with TickerProviderStateMixin {
  // String _phoneNumber;
  String provincia = "Murcia";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: Center(
      // color: Colors.red,
      child: RaisedButton(
        onPressed: () {
          // currentTheme.switchTheme();
          // String _phoneNumber2 = getNumber();
          FirebaseFirestore.instance
              .collection('numero_covid')
              .doc("9UCx7E9S2V22x9UQC016")
              .get()
              .then((DocumentSnapshot documentSnapshot) {
            // print(documentSnapshot.data()["Madrid"]);
            String phone = documentSnapshot.data()["Andalucia"];
            launch('tel://$phone');
          });
          //
          // getNumber();
        },
        child: Text("Asistencia Covid 19"),
      ),
    ));
  }
}
