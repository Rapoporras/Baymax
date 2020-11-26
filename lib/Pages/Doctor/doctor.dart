import 'package:Care4U/Pages/Doctor/dialog_flow.dart';

import 'package:flutter/material.dart';

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
          title: Text("Doctor",
              style: TextStyle(
                  color: Color(0xff0c2231),
                  fontSize: 22,
                  fontWeight: FontWeight.w700)),
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
                            height: 60,
                            margin: EdgeInsets.only(top: 5, left: 15),
                            child: Container(
                                width: 50,
                                height: 50,
                                decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image: new NetworkImage(
                                            "https://firebasestorage.googleapis.com/v0/b/medicosregistrados.appspot.com/o/doctor2.png?alt=media&token=8602dae3-9d03-4cee-91e9-2fe08e974643")))),
                          ),
                          Container(
                            height: 60,
                            margin: EdgeInsets.only(top: 15, left: 15),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Dra. Lucía Méndez - Nutricionista",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff333333))),
                                  Text("Hospital San Camilo",
                                      textAlign: TextAlign.center,
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
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff333333))),
                            Text("02/11/2020",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff333333))),
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
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff333333))),
                            Text("sobrepeso y anemia",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff333333))),
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
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xff333333))),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('- Syron',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff333333))),
                                    Text('- Dieta revisable mensualmente',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff333333))),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 150,
                                    padding:
                                        EdgeInsets.only(top: 15, bottom: 15),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xff5DB2E8),
                                        ),
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.25),
                                            spreadRadius: 0,
                                            blurRadius: 4,
                                            offset: Offset(0,
                                                4), // changes position of shadow
                                          ),
                                        ]),
                                    child: Center(
                                      child: Text("Receta",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff333333))),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      width: 150,
                                      padding:
                                          EdgeInsets.only(top: 15, bottom: 15),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xff5DB2E8),
                                          ),
                                          color: Color(0xffffffff),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black
                                                  .withOpacity(0.25),
                                              spreadRadius: 0,
                                              blurRadius: 4,
                                              offset: Offset(0,
                                                  4), // changes position of shadow
                                            ),
                                          ]),
                                      child: Center(
                                        child: Text("Dieta",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff333333))),
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
                                    color: Color(0xff5DB2E8),
                                  ),
                                  color: Color(0xffffffff),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
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
                                child: Text("Pruebas",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff333333))),
                              ),
                            ),
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
                                        BorderRadius.all(Radius.circular(5)),
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
                                  child: Text("Parte Baja y Alta",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff333333)
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
                                      color: Color(0xffC5EDFC),
                                    ),
                                    color: Color(0xffC5EDFC),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
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
                                  child: Text("Chat de ayuda",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff333333))),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return FlutterFactsChatBot(
                                          "Chat de ayuda");
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
