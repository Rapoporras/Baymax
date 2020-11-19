import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        appBar: AppBar(
          title: Text("Hola "),
        ),
        body: ListView(
          // scrollDirection: ,
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffb9b6b6),
                  ),
                  color: Color(0xffb9b6b6),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.only(top: 20, bottom: 20),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 20,
                    height: 80,
                    margin: EdgeInsets.only(bottom: 20),
                    child: FaIcon(
                      FontAwesomeIcons.userCircle,
                      color: Color(0xFF000000),
                      size: 50,
                    ),
                  ),
                  Container(
                    height: 80,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Lucia Sanz",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff000000))),
                          Text("Anemia y sobrepeso",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff000000)))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    child: Text("13/06/1987",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff000000))),
                  )
                ],
              ),
            ),
            proximaCita(),
            comoEstas(),
            barraMas(),
            barraBotones()
          ],
        ));
  }

  void numeroCovid(provincia) {
    FirebaseFirestore.instance
        .collection('numero_covid')
        .doc("9UCx7E9S2V22x9UQC016")
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      // print(documentSnapshot.data()["Madrid"]);
      String phone = documentSnapshot.data()[provincia];
      launch('tel://$phone');
    });
  }

  Widget barraMas() {
    return Container(
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
            child: Text("Más",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff000000))),
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffb9b6b6),
                ),
                color: Color(0xffb9b6b6),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            // margin: EdgeInsets.all(20),
            padding: EdgeInsets.only(top: 14, bottom: 14),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 55,
                    width: 80,
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffffffff),
                        ),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                      child: Text("Mis pastillas",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff000000))),
                    )),
                Container(
                    height: 55,
                    width: 80,
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffffffff),
                        ),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                      child: Text("Mis recetas",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff000000))),
                    )),
                Container(
                    height: 55,
                    width: 80,
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffffffff),
                        ),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                      child: Text("Mis pruebas",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff000000))),
                    )),
                Container(
                    height: 55,
                    width: 80,
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffffffff),
                        ),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                      child: Text("Mi dieta",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
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
      height: 180,
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
                    fontWeight: FontWeight.normal,
                    color: Color(0xff000000))),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffb9b6b6),
                ),
                color: Color(0xffb9b6b6),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            // margin: EdgeInsets.all(20),
            padding: EdgeInsets.only(top: 14, bottom: 14),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 80,
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffffffff),
                      ),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidGrinBeam,
                          color: Color(0xFF000000),
                          size: 30,
                        ),
                        Container(
                            height: 15,
                            // margin: EdgeInsets.only(left: 10),
                            child: Center(
                              child: Text("Curado",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xff000000))),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 80,
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffffffff),
                      ),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidSmile,
                          color: Color(0xFF000000),
                          size: 30,
                        ),
                        Container(
                            height: 15,
                            // margin: EdgeInsets.only(left: 10),
                            child: Center(
                              child: Text("Mejor",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xff000000))),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 80,
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffffffff),
                      ),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidMeh,
                          color: Color(0xFF000000),
                          size: 30,
                        ),
                        Container(
                            height: 15,
                            // margin: EdgeInsets.only(left: 10),
                            child: Center(
                              child: Text("Igual",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xff000000))),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 80,
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffffffff),
                      ),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidFrown,
                          color: Color(0xFF000000),
                          size: 30,
                        ),
                        Container(
                            height: 15,
                            // margin: EdgeInsets.only(left: 10),
                            child: Center(
                              child: Text("Peor",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
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
                  color: Color(0xffC4C4C4),
                ),
                color: Color(0xffC4C4C4),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Text("Ver evolución"),
          )
        ],
      ),
    );
  }

  Widget proximaCita() {
    Widget cita;
    bool _haycita = false;
    if (_haycita == true) {
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
                      fontWeight: FontWeight.normal,
                      color: Color(0xff000000))),
            ),
            Container(
                height: 80,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffb9b6b6),
                    ),
                    color: Color(0xffb9b6b6),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                // margin: EdgeInsets.all(20),
                padding: EdgeInsets.only(top: 20, bottom: 20),
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text("No hay citas programadas",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff000000))),
                ))
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
                      fontWeight: FontWeight.normal,
                      color: Color(0xff000000))),
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffb9b6b6),
                  ),
                  color: Color(0xffb9b6b6),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              // margin: EdgeInsets.all(20),
              padding: EdgeInsets.only(top: 20, bottom: 20),
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 80,
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.solidCalendarAlt,
                            color: Color(0xFF000000),
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
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xff000000))),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.solidClock,
                            color: Color(0xFF000000),
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
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xff000000))),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.mapMarkerAlt,
                            color: Color(0xFF000000),
                            size: 30,
                          ),
                          Container(
                              height: 80,
                              margin: EdgeInsets.only(left: 10),
                              child: Center(
                                child: Text("Sala 318",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
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
    return cita;
  }

  Widget barraBotones() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      // color: Colors.red,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 58,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffb9b6b6),
                ),
                color: Color(0xffb9b6b6),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Center(
              child: Text("Chat Urgencias",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff000000))),
            ),
          ),
          Container(
            height: 58,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffb9b6b6),
                ),
                color: Color(0xffb9b6b6),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            margin: EdgeInsets.only(right: 15, left: 15),
            child: Center(
              child: Text("Botón Covid",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff000000))),
            ),
          ),
          Container(
            height: 58,
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffb9b6b6),
                ),
                color: Color(0xffb9b6b6),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Center(
              child: Text("Chat médico",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff000000))),
            ),
          )
        ],
      ),
    );
  }
}
