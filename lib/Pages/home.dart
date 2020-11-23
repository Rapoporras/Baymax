import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:baymax/Pages/Help/ayuda.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _Home createState() => new _Home();
}

class _Home extends State<Home> with TickerProviderStateMixin {
  // String _phoneNumber;
  String provincia = "Murcia";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bienvenido"),
          actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.help),
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
    return Container(
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffb9b6b6),
          ),
          color: Color(0xffb9b6b6),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(top: 15, bottom: 15),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 50,
            // color: Colors.green,
            height: 80,
            // margin: EdgeInsets.only(bottom: 20),
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
    );
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
            height: 90,
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
                              fontSize: 14,
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
                              fontSize: 14,
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
                              fontSize: 14,
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
                              fontSize: 14,
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
            padding: EdgeInsets.only(top: 10, bottom: 10),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 75,
                  width: 80,
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
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
                          size: 25,
                        ),
                        Container(
                            height: 25,
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
                  height: 75,
                  width: 80,
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
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
                          size: 25,
                        ),
                        Container(
                            height: 25,
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
                  height: 75,
                  width: 80,
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
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
                          size: 25,
                        ),
                        Container(
                            height: 25,
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
                  height: 75,
                  width: 80,
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
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
                          size: 25,
                        ),
                        Container(
                            height: 25,
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

                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 80,
                      padding: EdgeInsets.only(top: 20, bottom: 20, left: 15),
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
                      padding: EdgeInsets.only(top: 20, bottom: 20),
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
                      // margin: EdgeInsets.only(left: ),
                      width: 120,
                      height: 80,
                      color: Color(0xff5A5A5A),
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.video,
                          color: Color(0xFFffffff),
                          size: 30,
                        ),
                      ),
                    ),
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
    }
    return cita;
  }

  Widget barraBotones() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 130,
      // color: Colors.red,
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
                  color: Color(0xffb9b6b6),
                ),
                color: Color(0xffb9b6b6),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Center(
              child: Stack(
                alignment: Alignment(0.0, 0.0),
                children: [
                  FaIcon(
                    FontAwesomeIcons.hospitalUser,
                    color: Color(0xFF000000).withOpacity(0.1),
                    size: 45,
                  ),
                  Text("Chat Urgencias",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff000000))),
                ],
              ),
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
                child: Stack(alignment: Alignment(0.0, 0.0), children: [
              FaIcon(
                FontAwesomeIcons.shieldVirus,
                color: Color(0xFF000000).withOpacity(0.1),
                size: 45,
              ),
              Text("Botón Covid",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff000000))),
            ])),
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
                child: Stack(alignment: Alignment(0.0, 0.0), children: [
              FaIcon(
                FontAwesomeIcons.solidCalendarAlt,
                color: Color(0xFF000000).withOpacity(0.1),
                size: 45,
              ),
              Text("Cita previa",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff000000))),
            ])),
          )
        ],
      ),
    );
  }
}
