import 'package:baymax/Pages/Doctor/dialog_flow.dart';
import 'package:baymax/Pages/home.dart';
import 'package:baymax/Pages/main_page.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:smart_select/smart_select.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Doctor extends StatefulWidget {
  Doctor({Key key}) : super(key: key);

  @override
  _Doctor createState() => new _Doctor();
}

class _Doctor extends State<Doctor> with TickerProviderStateMixin {
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
          title: Text("Doctor"),
        ),
        body: ListView(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          children: [
            // Text("Confirmar la cita",
            //     style: TextStyle(
            //         fontSize: 18,
            //         fontWeight: FontWeight.normal,
            //         color: Color(0xff000000))),
            Container(
              // padding: EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.only(bottom: 25),
              child: Container(
                  // height: 80,
                  padding: EdgeInsets.only(bottom: 20, top: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffB9B6B6),
                      ),
                      color: Color(0xffB9B6B6),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50,
                            // color: Colors.green,
                            height: 70,
                            margin: EdgeInsets.only(top: 5, left: 15),
                            child: FaIcon(
                              FontAwesomeIcons.userCircle,
                              color: Color(0xFF000000),
                              size: 50,
                            ),
                          ),
                          Container(
                            height: 70,
                            margin: EdgeInsets.only(top: 15, left: 15),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Dra. Méndez - Nutricionista",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff000000))),
                                  Text("Hospital San Camilo",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff000000))),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        // height: 2,
                        thickness: 1,
                        // indent: 20,
                        // endIndent: 0,
                      ),
                      Container(
                        height: 50,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Última visita: ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff000000))),
                            Text("02/11/2020",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff000000))),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        // height: 2,
                        thickness: 1,
                        // indent: 20,
                        // endIndent: 0,
                      ),
                      Container(
                        height: 50,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Motivo de visita: ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff000000))),
                            Text("sobrepeso y anemia",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff000000))),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        // height: 2,
                        thickness: 1,
                        // indent: 20,
                        // endIndent: 0,
                      ),
                      Container(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Tratamiento",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xff000000))),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('- Syron',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            color: Color(0xff000000))),
                                    Text('- Dieta revisable mensualmente',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            color: Color(0xff000000))),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 150,
                                    padding:
                                        EdgeInsets.only(top: 15, bottom: 15),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xffffffff),
                                        ),
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    child: Center(
                                      child: Text("Receta",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff000000))),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      width: 150,
                                      padding:
                                          EdgeInsets.only(top: 15, bottom: 15),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xffffffff),
                                          ),
                                          color: Color(0xffffffff),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      child: Center(
                                        child: Text("Dieta",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff000000))),
                                      ),
                                    ),
                                    onTap: () {
                                      // Navigator.of(context)
                                      //     .pushNamedAndRemoveUntil('/home',
                                      //         (Route<dynamic> route) => false);
                                    },
                                  ),
                                ],
                              )
                            ],
                          )),
                      Divider(
                        color: Colors.black,
                        // height: 2,
                        thickness: 1,
                        // indent: 20,
                        // endIndent: 0,
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 150,
                              padding: EdgeInsets.only(top: 15, bottom: 15),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffffffff),
                                  ),
                                  color: Color(0xffffffff),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Center(
                                child: Text("Pruebas",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff000000))),
                              ),
                            ),
                            InkWell(
                              child: Container(
                                width: 150,
                                padding: EdgeInsets.only(top: 15, bottom: 15),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffffffff),
                                    ),
                                    color: Color(0xffffffff),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Center(
                                  child: Text("Parte Baja",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff000000)
                                              .withOpacity(0.3))),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    '/home', (Route<dynamic> route) => false);
                              },
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        // height: 2,
                        thickness: 1,
                        // indent: 20,
                        // endIndent: 0,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              child: Container(
                                width: 150,
                                padding: EdgeInsets.only(top: 15, bottom: 15),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffffffff),
                                    ),
                                    color: Color(0xffffffff),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Center(
                                  child: Text("Chat de ayuda",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff000000))),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return FlutterFactsChatBot();
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            )
          ],
        ));
  }
}
