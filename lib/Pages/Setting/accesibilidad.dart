// import 'package:Care4U/Pages/Help/otrasAccesibilidad.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Accesibilidad extends StatefulWidget {
  Accesibilidad({Key key}) : super(key: key);

  @override
  _Accesibilidad createState() => new _Accesibilidad();
}

class _Accesibilidad extends State<Accesibilidad>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Accesibilidad Frecuentes",
            style: TextStyle(
                color: Color(0xff0c2231),
                fontSize: 22,
                fontWeight: FontWeight.w700),
          ),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.only(top: 15, bottom: 25),
              child: Container(
                // height: 70,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffffffff),
                    ),
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
                  children: [
                    Container(
                      // padding: EdgeInsets.only(left: 20, right: 20),
                      // margin: EdgeInsets.only(top: 25, bottom: 25),
                      child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffC5EDFC),
                              ),
                              color: Color(0xffC5EDFC),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: Offset(
                                      0, 4), // changes position of shadow
                                ),
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Center(
                                child: Text("Lector de pantalla",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000))),
                              )
                            ],
                          )),
                    ),
                    Container(
                      child: Container(
                        // height: 70,
                        padding: EdgeInsets.all(25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 35,
                                margin: EdgeInsets.only(top: 15, bottom: 15),
                                child: Text(
                                    "Recibe instrucciones de audio y controles especiales para ayudarte a navegar sin necesidad de ver la pantalla",
                                    style: TextStyle(
                                        color: Color(0xff333333),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300))),
                            Container(
                                height: 35,
                                margin: EdgeInsets.only(top: 15, bottom: 15),
                                child: Center(
                                  child: ToggleSwitch(
                                    minWidth: 150.0,
                                    cornerRadius: 20.0,
                                    activeBgColor: Color(0xff5DB2E8),
                                    activeFgColor: Colors.white,
                                    inactiveBgColor: Colors.grey,
                                    inactiveFgColor: Colors.white,
                                    labels: ['Desactivado', 'Activado'],
                                    icons: [
                                      FontAwesomeIcons.volumeMute,
                                      FontAwesomeIcons.volumeUp,
                                    ],
                                    onToggle: (index) {
                                      print('switched to: $index');
                                    },
                                  ),
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
