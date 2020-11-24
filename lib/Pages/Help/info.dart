import 'package:Care4U/Pages/Agenda/confirmacionCita.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:smart_select/smart_select.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Info extends StatefulWidget {
  Info({Key key}) : super(key: key);

  @override
  _Info createState() => new _Info();
}

class _Info extends State<Info> with TickerProviderStateMixin {
  List<S2Choice<String>> especialidades = [];

  List<Map<String, dynamic>> medicos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Información Equipo",
            style: TextStyle(
                color: Color(0xff0c2231),
                fontSize: 22,
                fontWeight: FontWeight.w700),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          children: [
            InkWell(
              child: Container(
                // padding: EdgeInsets.only(left: 20, right: 20),
                height: 100,
                margin: EdgeInsets.only(top: 25),
                child: Container(
                    // height: 80,
                    // padding: EdgeInsets.only(bottom: 20, top: 10),
                    decoration: BoxDecoration(
                        // border: Border.all(
                        //   color: Color(0xffffffff),
                        // ),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: 60,
                                height: 100,
                                // margin: EdgeInsets.only(top: 5, left: 15),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xff5DB2E8),
                                  ),
                                  color: Color(0xff5DB2E8),
                                  // borderRadius:
                                  //     BorderRadius.all(Radius.circular(15)),
                                ),
                                child: Center(
                                  child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: new DecorationImage(
                                              fit: BoxFit.fill,
                                              image: new NetworkImage(
                                                  "https://taikai.azureedge.net/X16R3dDIZpini0EM9oHVciMGPWkKI1UHKxAoysVp5OY/rs:fit:350:0:0/aHR0cHM6Ly9zdG9yYWdlLmdvb2dsZWFwaXMuY29tL3RhaWthaS1zdG9yYWdlL2ltYWdlcy80NjE5Y2ZlMC0yMWViLTExZWItOTZhYi1lMzNmMmNhNzk1ZTd1bm5hbWVkLmpwZw")))),
                                )),
                            Container(
                              height: 100,
                              padding: EdgeInsets.only(left: 15),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Carlota López del Blanco",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff0C2231))),
                                    Text("FULL STACK DEVELOPER",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff333333))),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return Preguntas();
                //     },
                //   ),
                // );
              },
            ),
            InkWell(
              child: Container(
                // padding: EdgeInsets.only(left: 20, right: 20),
                height: 100,
                margin: EdgeInsets.only(top: 25),
                child: Container(
                    // height: 80,
                    // padding: EdgeInsets.only(bottom: 20, top: 10),
                    decoration: BoxDecoration(
                        // border: Border.all(
                        //   color: Color(0xffffffff),
                        // ),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: 60,
                                height: 100,
                                // margin: EdgeInsets.only(top: 5, left: 15),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xff5DB2E8),
                                  ),
                                  color: Color(0xff5DB2E8),
                                  // borderRadius:
                                  //     BorderRadius.all(Radius.circular(15)),
                                ),
                                child: Center(
                                  child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: new DecorationImage(
                                              fit: BoxFit.fill,
                                              image: new NetworkImage(
                                                  "https://taikai.azureedge.net/dEmVWg9cX-Y_YGBZmu870ggVB1NapCZCsdQbiBvcSBY/rs:fit:350:0:0/aHR0cHM6Ly9zdG9yYWdlLmdvb2dsZWFwaXMuY29tL3RhaWthaS1zdG9yYWdlL2ltYWdlcy8zZWNkZjQ3MC0yMWVlLTExZWItYjM4ZS1iMzIwOWU1NTAyODJicmF6b3MgY3J1emFkb3MuanBlZw")))),
                                )),
                            Container(
                              height: 100,
                              padding: EdgeInsets.only(left: 15),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Carolina Martínez Pulido",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff0C2231))),
                                    Text("UX/UI DESIGNER",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff333333))),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return Preguntas();
                //     },
                //   ),
                // );
              },
            ),
            InkWell(
              child: Container(
                // padding: EdgeInsets.only(left: 20, right: 20),
                height: 100,
                margin: EdgeInsets.only(top: 25),
                child: Container(
                    // height: 80,
                    // padding: EdgeInsets.only(bottom: 20, top: 10),
                    decoration: BoxDecoration(
                        // border: Border.all(
                        //   color: Color(0xffffffff),
                        // ),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: 60,
                                height: 100,
                                // margin: EdgeInsets.only(top: 5, left: 15),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xff5DB2E8),
                                  ),
                                  color: Color(0xff5DB2E8),
                                  // borderRadius:
                                  //     BorderRadius.all(Radius.circular(15)),
                                ),
                                child: Center(
                                  child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: new DecorationImage(
                                              fit: BoxFit.fill,
                                              image: new NetworkImage(
                                                  "https://taikai.azureedge.net/W0MoB_5fb5QYQzEZIHPZt4j59PmBU0u4DwF7LzDCh5Y/rs:fit:350:0:0/aHR0cHM6Ly9zdG9yYWdlLmdvb2dsZWFwaXMuY29tL3RhaWthaS1zdG9yYWdlL2ltYWdlcy80ZjVlZTU1MC0yMzdmLTExZWItYjM4ZS1iMzIwOWU1NTAyODJEU0MwMTcyNy5KUEc")))),
                                )),
                            Container(
                              height: 100,
                              padding: EdgeInsets.only(left: 15),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Laura Lucas Aguadero",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff0C2231))),
                                    Text("UX/UI DESIGNER",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff333333))),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return Preguntas();
                //     },
                //   ),
                // );
              },
            ),
            InkWell(
              child: Container(
                // padding: EdgeInsets.only(left: 20, right: 20),
                height: 100,
                margin: EdgeInsets.only(top: 25),
                child: Container(
                    // height: 80,
                    // padding: EdgeInsets.only(bottom: 20, top: 10),
                    decoration: BoxDecoration(
                        // border: Border.all(
                        //   color: Color(0xffffffff),
                        // ),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: 60,
                                height: 100,
                                // margin: EdgeInsets.only(top: 5, left: 15),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xff5DB2E8),
                                  ),
                                  color: Color(0xff5DB2E8),
                                  // borderRadius:
                                  //     BorderRadius.all(Radius.circular(15)),
                                ),
                                child: Center(
                                  child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: new DecorationImage(
                                              fit: BoxFit.fill,
                                              image: new NetworkImage(
                                                  "https://taikai.azureedge.net/81VL1ebUE-h-iFBWCCGrEuLvfRRxT0mKZziOKtIfNbU/rs:fit:350:0:0/aHR0cHM6Ly9zdG9yYWdlLmdvb2dsZWFwaXMuY29tL3RhaWthaS1zdG9yYWdlL2ltYWdlcy9mNjI4YzBjMC0yMWU3LTExZWItYjA5MS01OWIyMWQ4MTQyOTZwZXJmaWwucG5n")))),
                                )),
                            Container(
                              height: 100,
                              padding: EdgeInsets.only(left: 15),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Ignacio Porras Ibáñez",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff0C2231))),
                                    Text("FULL STACK DEVELOPER",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff333333))),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return Preguntas();
                //     },
                //   ),
                // );
              },
            ),
          ],
        ));
  }
}
