import 'package:Care4U/Pages/Setting/alarma.dart';
import 'package:Care4U/Pages/Setting/accesibilidad.dart';
import 'package:Care4U/Pages/Setting/contacto.dart';
import 'package:Care4U/Pages/Setting/datos.dart';
import 'package:Care4U/Pages/Setting/farmacia.dart';
import 'package:Care4U/Pages/Setting/preferencias.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:Care4U/Component/config.dart';

class Setting extends StatefulWidget {
  Setting({Key key}) : super(key: key);

  @override
  _Setting createState() => new _Setting();
}

class _Setting extends State<Setting> with TickerProviderStateMixin {
  String value = "";
  String value2 = "";
  // Declare this variable
  int selectedRadioTile;
  int selectedRadio;
  bool isSwitched = false;
  bool isSwitched2 = false;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadioTile = 0;

    if (box.containsKey('movilidadreducida')) {
      isSwitched = box.get('movilidadreducida');
    } else {
      box.put('movilidadreducida', isSwitched);
    }

    if (box.containsKey('notificacion')) {
      isSwitched2 = box.get('notificacion');
    } else {
      box.put('notificacion', isSwitched2);
    }
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
          // leading: IconButton(
          //     icon: Icon(Icons.arrow_back, color: Color(0xff0c2231)),
          //     onPressed: () => {
          //           Navigator.of(context).pushNamedAndRemoveUntil(
          //               '/home', (Route<dynamic> route) => false)
          //         }),
          title: Text(
            "Dudas",
            style: TextStyle(
                color: Color(0xff0c2231),
                fontSize: 22,
                fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor: Color(0xffF6F6F6),
        body: ListView(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10),
          children: [
            InkWell(
              child: Container(
                // padding: EdgeInsets.only(left: 20, right: 20),
                height: 65,
                margin: EdgeInsets.only(top: 15),
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
                                width: 65,
                                height: 65,
                                // margin: EdgeInsets.only(top: 5, left: 15),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffC5EDFC),
                                  ),
                                  color: Color(0xffC5EDFC),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15)),
                                ),
                                child: Center(
                                  child: FaIcon(
                                    FontAwesomeIcons.solidBell,
                                    color: Color(0xFF0C2231),
                                    size: 30,
                                  ),
                                )),
                            Expanded(
                              child: Container(
                                height: 65,
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Notificaciones",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff0C2231))),
                                    Text("Tono, vibración, etc",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff333333))),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                                width: 60,
                                height: 65,
                                // margin: EdgeInsets.only(top: 5, left: 15),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffC5EDFC),
                                  ),
                                  color: Color(0xffC5EDFC),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                ),
                                child: Center(
                                  child: Switch(
                                    value: isSwitched2,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched2 = value;
                                        box.put('notificacion', isSwitched2);
                                      });
                                    },
                                    inactiveTrackColor: Color(0xff0C2231),
                                    activeTrackColor: Color(0xff5DB2E8),
                                    activeColor: Color(0xff0C2231),
                                  ),
                                )),
                          ],
                        ),
                      ],
                    )),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Alarma();
                    },
                  ),
                );
              },
            ),
            InkWell(
              child: Container(
                // padding: EdgeInsets.only(left: 20, right: 20),
                height: 65,
                margin: EdgeInsets.only(top: 15),
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
                                width: 65,
                                height: 65,
                                // margin: EdgeInsets.only(top: 5, left: 15),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffC5EDFC),
                                  ),
                                  color: Color(0xffC5EDFC),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15)),
                                ),
                                child: Center(
                                  child: FaIcon(
                                    FontAwesomeIcons.cogs,
                                    color: Color(0xFF0C2231),
                                    size: 30,
                                  ),
                                )),
                            Container(
                              height: 65,
                              padding: EdgeInsets.only(left: 10),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Preferencias",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff0C2231))),
                                    Text("Idioma, texto",
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
                      return Preferencias();
                    },
                  ),
                );
              },
            ),
            InkWell(
              child: Container(
                // padding: EdgeInsets.only(left: 20, right: 20),
                height: 65,
                margin: EdgeInsets.only(top: 15),
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
                                width: 65,
                                height: 65,
                                // margin: EdgeInsets.only(top: 5, left: 15),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffC5EDFC),
                                  ),
                                  color: Color(0xffC5EDFC),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15)),
                                ),
                                child: Center(
                                  child: FaIcon(
                                    FontAwesomeIcons.userShield,
                                    color: Color(0xFF0C2231),
                                    size: 30,
                                  ),
                                )),
                            Container(
                              height: 65,
                              padding: EdgeInsets.only(left: 10),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Contacto directo",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff0C2231))),
                                    Text("Personas de contacto",
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
                      return Contacto();
                    },
                  ),
                );
              },
            ),
            InkWell(
              child: Container(
                // padding: EdgeInsets.only(left: 20, right: 20),
                height: 65,
                margin: EdgeInsets.only(top: 15),
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
                                width: 65,
                                height: 65,
                                // margin: EdgeInsets.only(top: 5, left: 15),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffC5EDFC),
                                  ),
                                  color: Color(0xffC5EDFC),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15)),
                                ),
                                child: Center(
                                  child: FaIcon(
                                    FontAwesomeIcons.clinicMedical,
                                    color: Color(0xFF0C2231),
                                    size: 30,
                                  ),
                                )),
                            Container(
                              height: 65,
                              padding: EdgeInsets.only(left: 10),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Farmacia",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff0C2231))),
                                    Text("Dirección",
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
                      return Farmacia();
                    },
                  ),
                );
              },
            ),
            InkWell(
              child: Container(
                // padding: EdgeInsets.only(left: 20, right: 20),
                height: 65,
                margin: EdgeInsets.only(top: 15),
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
                                width: 65,
                                height: 65,
                                // margin: EdgeInsets.only(top: 5, left: 15),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffC5EDFC),
                                  ),
                                  color: Color(0xffC5EDFC),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15)),
                                ),
                                child: Center(
                                  child: FaIcon(
                                    FontAwesomeIcons.userAlt,
                                    color: Color(0xFF0C2231),
                                    size: 30,
                                  ),
                                )),
                            Container(
                              height: 65,
                              padding: EdgeInsets.only(left: 10),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Datos Personales",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff0C2231))),
                                    Text("Orientación sexual, alimentación",
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
                      return Datos();
                    },
                  ),
                );
              },
            ),
            InkWell(
              child: Container(
                // padding: EdgeInsets.only(left: 20, right: 20),
                height: 65,
                margin: EdgeInsets.only(top: 15),
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
                                width: 65,
                                height: 65,
                                // margin: EdgeInsets.only(top: 5, left: 15),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffC5EDFC),
                                  ),
                                  color: Color(0xffC5EDFC),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15)),
                                ),
                                child: Center(
                                  child: FaIcon(
                                    FontAwesomeIcons.child,
                                    color: Color(0xFF0C2231),
                                    size: 30,
                                  ),
                                )),
                            Container(
                              height: 65,
                              padding: EdgeInsets.only(left: 10),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Accesibilidad",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff0C2231))),
                                    Text("Asistente de voz, Menú especial",
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
                      return Accesibilidad();
                    },
                  ),
                );
              },
            ),
            InkWell(
              child: Container(
                // padding: EdgeInsets.only(left: 20, right: 20),
                height: 65,
                margin: EdgeInsets.only(top: 15),
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: 65,
                                height: 65,
                                // margin: EdgeInsets.only(top: 5, left: 15),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffC5EDFC),
                                  ),
                                  color: Color(0xffC5EDFC),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15)),
                                ),
                                child: Center(
                                  child: FaIcon(
                                    FontAwesomeIcons.accessibleIcon,
                                    color: Color(0xFF0C2231),
                                    size: 30,
                                  ),
                                )),
                            Expanded(
                              child: Container(
                                height: 65,
                                padding: EdgeInsets.only(left: 5, right: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Movilidad reducida",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff0C2231))),
                                    Text("Requiere ayuda para desplazarse",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff333333))),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                                width: 60,
                                height: 65,
                                // margin: EdgeInsets.only(top: 5, left: 15),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffC5EDFC),
                                  ),
                                  color: Color(0xffC5EDFC),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                ),
                                child: Center(
                                  child: Switch(
                                    value: isSwitched,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched = value;
                                        box.put(
                                            'movilidadreducida', isSwitched);
                                      });
                                    },
                                    inactiveTrackColor: Color(0xff0C2231),
                                    activeTrackColor: Color(0xff5DB2E8),
                                    activeColor: Color(0xff0C2231),
                                  ),
                                )),
                          ],
                        ),
                      ],
                    )),
              ),
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return VideoPlayerApp();
                //     },
                //   ),
                // );
              },
            ),
            Container(
              height: 40,
            )
          ],
        ));
  }
}
