import 'package:baymax/Pages/home.dart';
import 'package:baymax/Pages/main_page.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:smart_select/smart_select.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Ayuda extends StatefulWidget {
  Ayuda({Key key}) : super(key: key);

  @override
  _Ayuda createState() => new _Ayuda();
}

class _Ayuda extends State<Ayuda> with TickerProviderStateMixin {
  String value = "";
  // Declare this variable
  int selectedRadioTile;
  int selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dudas"),
        ),
        backgroundColor: Color(0xffDADADA),
        body: ListView(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          children: [
            Container(
              // padding: EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.only(top: 25),
              child: Container(
                  // height: 80,
                  // padding: EdgeInsets.only(bottom: 20, top: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffffffff),
                      ),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            // color: Colors.green,
                            height: 70,
                            // margin: EdgeInsets.only(top: 5, left: 15),
                            color: Color(0xffF2EFEF),
                            child: FaIcon(
                              FontAwesomeIcons.userCircle,
                              color: Color(0xFF000000),
                              size: 50,
                            ),
                          ),
                          Container(
                            height: 70,
                            margin: EdgeInsets.only(top: 10, left: 15),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Tutorial",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff000000))),
                                  Text(
                                      "Volver a ver el tutorial del inicio y volver \na configurar la aplicación",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff5A5A5A))),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            ),
            Container(
              // padding: EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.only(top: 25),
              child: Container(
                  // height: 80,
                  // padding: EdgeInsets.only(bottom: 20, top: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffffffff),
                      ),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            // color: Colors.green,
                            height: 70,
                            // margin: EdgeInsets.only(top: 5, left: 15),
                            color: Color(0xffF2EFEF),
                            child: FaIcon(
                              FontAwesomeIcons.userCircle,
                              color: Color(0xFF000000),
                              size: 50,
                            ),
                          ),
                          Container(
                            height: 70,
                            margin: EdgeInsets.only(top: 10, left: 15),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Tutorial",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff000000))),
                                  Text(
                                      "Volver a ver el tutorial del inicio y volver \na configurar la aplicación",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff5A5A5A))),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            ),
            Container(
              // padding: EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.only(top: 25),
              child: Container(
                  // height: 80,
                  // padding: EdgeInsets.only(bottom: 20, top: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffffffff),
                      ),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            // color: Colors.green,
                            height: 70,
                            // margin: EdgeInsets.only(top: 5, left: 15),
                            color: Color(0xffF2EFEF),
                            child: FaIcon(
                              FontAwesomeIcons.userCircle,
                              color: Color(0xFF000000),
                              size: 50,
                            ),
                          ),
                          Container(
                            height: 70,
                            margin: EdgeInsets.only(top: 10, left: 15),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Tutorial",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff000000))),
                                  Text(
                                      "Volver a ver el tutorial del inicio y volver \na configurar la aplicación",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff5A5A5A))),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            )
          ],
        ));
  }
}
