import 'dart:async';
// import 'package:agora_rtc_engine/rtc_engine.dart';
// import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:Care4U/Pages/Help/ayuda.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:Care4U/Pages/call.dart';

import '../Models/paciente.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _Home createState() => new _Home();
}

class _Home extends State<Home> with TickerProviderStateMixin {
  // String _phoneNumber;
  String provincia = "Andalucia";
  Paciente paciente;
  @override
  void initState() {
    paciente = new Paciente("smXb5Y6pEHyqaKicXDXf");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Bienvenido",
            style: TextStyle(
                color: Color(0xff0c2231),
                fontSize: 22,
                fontWeight: FontWeight.w700),
          ),
          actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.help),
              color: Color(0xff0c2231),
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Ayuda();
                    },
                  ),
                )
              },
            ),
          ],
        ),
        body: ListView(
          // scrollDirection: ,
          children: [
            barraInfo(),
            proximaCita(),
            comoEstas(),
            barraMas(),
            barraBotones()
          ],
        ));
  }

  Widget barraInfo() {
    // print("hola" + paciente.imagen);
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffffffff),
        ),
        color: Color(0xffffffff),
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(top: 5, bottom: 5),
      width: MediaQuery.of(context).size.width,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            // color: Colors.green,
            height: 50,
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Container(
                width: 50,
                height: 50,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://firebasestorage.googleapis.com/v0/b/medicosregistrados.appspot.com/o/%20smXb5Y6pEHyqaKicXDXf%2Fperfil.png?alt=media&token=242330e0-a492-4a95-ae41-5caed64b48ba")))),
          ),
          Container(
            height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(paciente.nombre,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000))),
                Text(paciente.nacimiento,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000)))
              ],
            ),
          ),
          // Container(
          //   height: 60,
          //   child: Text(paciente.nacimiento,
          //       textAlign: TextAlign.right,
          //       style: TextStyle(
          //           fontSize: 16,
          //           fontWeight: FontWeight.w400,
          //           color: Color(0xff000000))),
          // )
        ],
      ),
    );
  }

  void numeroCovid(provincia) {
    // FirebaseFirestore.instance
    //     .collection('numero_covid')
    //     .doc("3AG6qws1OEJbM8wCAloR")
    //     .get()
    //     .then((DocumentSnapshot documentSnapshot) {
    //   // print(documentSnapshot.data()["Madrid"]);
    //   String phone = documentSnapshot.data()[provincia];
    //   // print(phone);
    //   // print(provincia);
    //   launch('tel://$phone');
    // });
    FirebaseFirestore.instance
        .collection('numero_covid')
        .doc("3AG6qws1OEJbM8wCAloR")
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      // print(documentSnapshot.data()["Madrid"]);
      String phone = documentSnapshot.data()[provincia];
      // print(phone);
      // print(provincia);
      launch('tel://$phone');
    });
  }

  Widget barraMas() {
    return Container(
      height: 110,
      padding: EdgeInsets.only(left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 20,
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.only(left: 5),
            child: Text("Más",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000))),
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffffffff),
                ),
                color: Color(0xffffffff),
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                ]),
            // margin: EdgeInsets.all(20),
            padding: EdgeInsets.only(top: 14, bottom: 14),
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                    height: 55,
                    width: 80,
                    margin: EdgeInsets.only(left: 5, right: 5),
                    padding:
                        EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff5DB2E8),
                        ),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                      child: Text("Mis pastillas",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000))),
                    )),
                Container(
                    height: 55,
                    width: 80,
                    margin: EdgeInsets.only(left: 5, right: 5),
                    padding:
                        EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff5DB2E8),
                        ),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                      child: Text("Mis recetas",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000))),
                    )),
                Container(
                    height: 55,
                    width: 80,
                    margin: EdgeInsets.only(left: 5, right: 5),
                    padding:
                        EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff5DB2E8),
                        ),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                      child: Text("Mis pruebas",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000))),
                    )),
                Container(
                    height: 55,
                    width: 80,
                    margin: EdgeInsets.only(left: 5, right: 5),
                    padding:
                        EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff5DB2E8),
                        ),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                      child: Text("Mi dieta",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000))),
                    )),
                Container(
                    height: 55,
                    width: 80,
                    margin: EdgeInsets.only(left: 5, right: 5),
                    padding:
                        EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff5DB2E8),
                        ),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                      child: Text("Videos",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000))),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget comoEstas() {
    return Container(
      height: 160,
      padding: EdgeInsets.only(left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 20,
            margin: EdgeInsets.only(bottom: 5),
            padding: EdgeInsets.only(left: 5),
            child: Text("¿Como te encuentras hoy?",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000))),
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffffffff),
                ),
                color: Color(0xffffffff),
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                ]),
            // margin: EdgeInsets.all(20),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 55,
                  width: 75,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff5DB2E8),
                      ),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 4), // changes position of shadow
                        ),
                      ]),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidGrinBeam,
                          color: Color(0xFFFFA1DF),
                          size: 18,
                        ),
                        Container(
                            height: 20,
                            // margin: EdgeInsets.only(left: 10),
                            child: Center(
                              child: Text("Curado",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xff000000))),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  width: 75,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff5DB2E8),
                      ),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 4), // changes position of shadow
                        ),
                      ]),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidSmile,
                          color: Color(0xFF5DB2E8),
                          size: 18,
                        ),
                        Container(
                            height: 20,
                            // margin: EdgeInsets.only(left: 10),
                            child: Center(
                              child: Text("Mejor",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xff000000))),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  width: 75,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff5DB2E8),
                      ),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 4), // changes position of shadow
                        ),
                      ]),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidMeh,
                          color: Color(0xFFF3C294),
                          size: 18,
                        ),
                        Container(
                            height: 20,
                            // margin: EdgeInsets.only(left: 10),
                            child: Center(
                              child: Text("Igual",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xff000000))),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  width: 75,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff5DB2E8),
                      ),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 4), // changes position of shadow
                        ),
                      ]),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidFrown,
                          color: Color(0xFFF18C8C),
                          size: 18,
                        ),
                        Container(
                            height: 20,
                            // margin: EdgeInsets.only(left: 10),
                            child: Center(
                              child: Text("Peor",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xff000000))),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffC5EDFC),
                ),
                color: Color(0xffC5EDFC),
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                ]),
            child: Text("Ver evolución",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff000000),
                )),
          )
        ],
      ),
    );
  }

  Widget proximaCita() {
    Widget cita;
    bool _haycita = true;
    String _tipoCita = "online";
    if (_haycita == false) {
      cita = Container(
        height: 120,
        padding: EdgeInsets.only(left: 20, right: 20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 20,
              margin: EdgeInsets.only(bottom: 5),
              padding: EdgeInsets.only(left: 5),
              child: Text("Mi próxima cita",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000))),
            ),
            Container(
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffffffff),
                    ),
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ]),
                padding: EdgeInsets.only(top: 20, bottom: 20),
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text("No hay citas programadas",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000))),
                ))
          ],
        ),
      );
    } else {
      if (_tipoCita == "online") {
        cita = Container(
          height: 120,
          padding: EdgeInsets.only(left: 20, right: 20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20,
                padding: EdgeInsets.only(left: 5),
                margin: EdgeInsets.only(bottom: 5),
                child: Text("Mi próxima cita",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000))),
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffffffff),
                    ),
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ]),
                // margin: EdgeInsets.all(20),

                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 70,
                      padding: EdgeInsets.only(top: 5, bottom: 5, left: 15),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.solidCalendarAlt,
                              color: Color(0xFF5DB2E8),
                              size: 30,
                            ),
                            Container(
                                height: 80,
                                margin: EdgeInsets.only(left: 10),
                                child: Center(
                                  child: Text("11/11/20",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000))),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.solidClock,
                              color: Color(0xFF5DB2E8),
                              size: 30,
                            ),
                            Container(
                                height: 80,
                                margin: EdgeInsets.only(left: 10),
                                child: Center(
                                  child: Text("09:30",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000))),
                                )),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        // margin: EdgeInsets.only(left: ),
                        width: 120,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF5DB2E8),
                          ),
                          color: Color(0xFF5DB2E8),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),

                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.video,
                            color: Color(0xFF0C2231),
                            size: 30,
                          ),
                        ),
                      ),
                      onTap: () {
                        onJoin();
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        );
      } else {
        cita = Container(
          height: 120,
          padding: EdgeInsets.only(left: 20, right: 20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20,
                padding: EdgeInsets.only(left: 5),
                margin: EdgeInsets.only(bottom: 5),
                child: Text("Mi próxima cita",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000))),
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffffffff),
                    ),
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ]),
                // margin: EdgeInsets.all(20),
                padding: EdgeInsets.only(top: 20, bottom: 20),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 70,
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.solidCalendarAlt,
                              color: Color(0xFF5DB2E8),
                              size: 30,
                            ),
                            Container(
                                height: 70,
                                margin: EdgeInsets.only(left: 10),
                                child: Center(
                                  child: Text("11/11/20",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000))),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.solidClock,
                              color: Color(0xFF5DB2E8),
                              size: 30,
                            ),
                            Container(
                                height: 70,
                                margin: EdgeInsets.only(left: 10),
                                child: Center(
                                  child: Text("09:30",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000))),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.mapMarkerAlt,
                              color: Color(0xFF5DB2E8),
                              size: 30,
                            ),
                            Container(
                                height: 70,
                                margin: EdgeInsets.only(left: 10),
                                child: Center(
                                  child: Text("Sala 318",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000))),
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }
    }
    return cita;
  }

  Widget barraBotones() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 130,
      // color: Colors.red,
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 58,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffF7BDBD),
                ),
                color: Color(0xffF7BDBD),
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                ]),
            child: Center(
              child: Stack(
                alignment: Alignment(0.8, -1),
                children: [
                  FaIcon(
                    FontAwesomeIcons.hospitalUser,
                    color: Color(0xFFffffff).withOpacity(0.63),
                    size: 30,
                  ),
                  Container(
                    width: 100,
                    child: Text("Chat\nUrgencias",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff000000))),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            child: Container(
              height: 58,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffF3C294),
                  ),
                  color: Color(0xffF3C294),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              margin: EdgeInsets.only(right: 15, left: 15),
              child: Center(
                  child: Stack(alignment: Alignment(0.8, -1), children: [
                FaIcon(
                  FontAwesomeIcons.shieldVirus,
                  color: Color(0xFFffffff).withOpacity(0.63),
                  size: 30,
                ),
                Container(
                  width: 100,
                  child: Text("Botón\nCOVID",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000))),
                )
              ])),
            ),
            onTap: () {
              numeroCovid(provincia);
            },
          ),
          Container(
            height: 58,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffC5EDFC),
                ),
                color: Color(0xffC5EDFC),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Center(
                child: Stack(alignment: Alignment(0.8, -1), children: [
              FaIcon(
                FontAwesomeIcons.solidCalendarAlt,
                color: Color(0xFFffffff).withOpacity(0.63),
                size: 30,
              ),
              Container(
                  width: 100,
                  child: Text(
                    "Cita\nprevia",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000)),
                  )),
            ])),
          )
        ],
      ),
    );
  }

  Future<void> onJoin() async {
    await _handleCameraAndMic();
    // push video page with given channel name
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CallPage(
            // channelName: "prueba",
            // role: ClientRole.Broadcaster,
            ),
      ),
    );
  }

  Future<void> _handleCameraAndMic() async {
    await PermissionHandler().requestPermissions(
      [PermissionGroup.camera, PermissionGroup.microphone],
    );
  }
}
