import 'package:Care4U/Pages/Doctor/dialog_flow.dart';
import 'package:flutter/material.dart';
import 'package:smart_select/smart_select.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Urgencias extends StatefulWidget {
  Urgencias({Key key}) : super(key: key);

  @override
  _Urgencias createState() => new _Urgencias();
}

class _Urgencias extends State<Urgencias> with TickerProviderStateMixin {
  List<S2Choice<String>> especialidades = [];

  List<Map<String, dynamic>> medicos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Urgencias",
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
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15)),
                                ),
                                child: Center(
                                  child: FaIcon(
                                    FontAwesomeIcons.ambulance,
                                    color: Color(0xFFffffff).withOpacity(0.63),
                                    size: 30,
                                  ),
                                )),
                            Container(
                              height: 100,
                              padding: EdgeInsets.only(left: 15),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Chat de urgencias",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff0C2231))),
                                    Text("Realiza cualquier pregunta",
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return FlutterFactsChatBot("Chat de Emergencia");
                    },
                  ),
                );
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
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15)),
                                ),
                                child: Center(
                                    child: FaIcon(
                                  FontAwesomeIcons.solidHospital,
                                  color: Color(0xFFffffff).withOpacity(0.63),
                                  size: 30,
                                ))),
                            Container(
                              height: 100,
                              padding: EdgeInsets.only(left: 15),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Llamar a urgencias",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff0C2231))),
                                    // Text("UX/UI DESIGNER",
                                    //     textAlign: TextAlign.left,
                                    //     style: TextStyle(
                                    //         fontSize: 16,
                                    //         fontWeight: FontWeight.w300,
                                    //         color: Color(0xff333333))),
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
                launch('tel:/112');
              },
            ),
          ],
        ));
  }
}
