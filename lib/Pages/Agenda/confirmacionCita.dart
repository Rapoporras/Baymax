import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConfirmacionCita extends StatefulWidget {
  ConfirmacionCita({Key key}) : super(key: key);

  @override
  _ConfirmacionCita createState() => new _ConfirmacionCita();
}

class _ConfirmacionCita extends State<ConfirmacionCita>
    with TickerProviderStateMixin {
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
          title: Text("Confirmación cita"),
        ),
        body: ListView(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          children: [
            Text("Confirmar la cita",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000))),
            Container(
              // padding: EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.only(top: 25, bottom: 25),
              child: Container(
                  // height: 80,
                  padding: EdgeInsets.only(bottom: 20, top: 10),
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
                              child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: new BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: new DecorationImage(
                                          fit: BoxFit.fill,
                                          image: new NetworkImage(
                                              "https://firebasestorage.googleapis.com/v0/b/medicosregistrados.appspot.com/o/doctor1.png?alt=media&token=c03ee1a1-427e-461f-858c-f7511169811a"))))),
                          Container(
                            height: 70,
                            margin: EdgeInsets.only(top: 10, left: 15),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Dr. José Luis López  - Alergólogo",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff000000))),
                                  Text("Hospital San Camilo",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff000000))),
                                  Container(
                                    width: 280,
                                    margin: EdgeInsets.only(top: 10),
                                    child: Row(
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.solidCalendarAlt,
                                          color: Color(0xFF5DB2E8),
                                          size: 16,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 5, right: 5),
                                          child: Text("11/11/2020",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                  color: Color(0xff000000))),
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.solidClock,
                                          color: Color(0xFF5DB2E8),
                                          size: 16,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 5, right: 5),
                                          child: Text("09:30",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                  color: Color(0xff000000))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                          // height: 150,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffF6F6F6),
                                    ),
                                    color: Color(0xffF6F6F6),
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
                                child: TextField(
                                  maxLines: 10,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                  decoration: InputDecoration(
                                      fillColor: Colors.black,
                                      hintText:
                                          "Escribe brevemente el motivo de tu consulta...",
                                      hintStyle: TextStyle(
                                          // backgroundColor: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black)),
                                  onChanged: (text) {
                                    value = text;
                                  },
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xff5DB2E8),
                                    ),
                                    color: Color(0xff5DB2E8),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.25),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        offset: Offset(
                                            0, 4), // changes position of shadow
                                      ),
                                    ]),
                                // color: Colors.red,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      child: Container(
                                        child: FaIcon(
                                          FontAwesomeIcons.paperclip,
                                          color: Color(0xFF0C2231),
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 2,
                                      height: 30,
                                      color: Color(0xFF0C2231),
                                      child: Text(""),
                                    ),
                                    InkWell(
                                      child: Container(
                                        child: FaIcon(
                                          FontAwesomeIcons.camera,
                                          color: Color(0xFF0C2231),
                                          size: 25,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                      RadioListTile(
                        value: 1,
                        groupValue: selectedRadioTile,
                        title: Text(
                          "Cita Online",
                          style: TextStyle(
                              // backgroundColor: Colors.white,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        onChanged: (val) {
                          setSelectedRadioTile(val);
                        },
                        activeColor: Color(0xff5DB2E8),
                        // selected: true,
                      ),
                      RadioListTile(
                        value: 2,
                        groupValue: selectedRadioTile,
                        title: Text(
                          "Cita Presencial",
                          style: TextStyle(
                              // backgroundColor: Colors.white,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        onChanged: (val) {
                          setSelectedRadioTile(val);
                        },
                        activeColor: Color(0xff5DB2E8),

                        // selected: false,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                                child: Container(
                                  width: 150,
                                  padding: EdgeInsets.only(top: 15, bottom: 15),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xff5DB2E8),
                                      ),
                                      color: Color(0xffffffff),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.25),
                                          spreadRadius: 0,
                                          blurRadius: 4,
                                          offset: Offset(0,
                                              4), // changes position of shadow
                                        ),
                                      ]),
                                  child: Center(
                                    child: Text("Cancelar",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff000000))),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                      '/home', (Route<dynamic> route) => false);
                                }),
                            InkWell(
                              child: Container(
                                width: 150,
                                padding: EdgeInsets.only(top: 15, bottom: 15),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffC5EDFC),
                                    ),
                                    color: Color(0xffC5EDFC),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.25),
                                        spreadRadius: 0,
                                        blurRadius: 4,
                                        offset: Offset(
                                            0, 4), // changes position of shadow
                                      ),
                                    ]),
                                child: Center(
                                  child: Text("Confirmar",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff000000))),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    '/home', (Route<dynamic> route) => false);
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
