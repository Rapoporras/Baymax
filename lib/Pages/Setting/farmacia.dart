import 'package:Care4U/Pages/Setting/maps.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Farmacia extends StatefulWidget {
  Farmacia({Key key}) : super(key: key);

  @override
  _Farmacia createState() => new _Farmacia();
}

class _Farmacia extends State<Farmacia> with TickerProviderStateMixin {
  bool isSwitched = false;
  // String dropdownValue = 'One';
  String dropdownValue2 = 'Castellano';

  String value = "";
  // Declare this variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Farmacia Frecuentes",
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
            margin: EdgeInsets.only(top: 25, bottom: 25),
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
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Center(
                              child: Text("Farmacia de guardia",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff000000))),
                            )
                          ],
                        )),
                  ),
                  Container(
                      padding: EdgeInsets.all(20),
                      // margin: EdgeInsets.only(top: 25, bottom: 25),
                      child: Container(
                        height: 50,
                        child: Row(
                          children: [
                            Expanded(
                              child: Center(
                                  child: Column(
                                children: [
                                  Text("Farmacia Galindo",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000))),
                                  Text("Calle Grande 21",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff000000))),
                                ],
                              )),
                            ),
                            Center(
                                child: Container(
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.only(
                                        top: 5, bottom: 5, left: 15, right: 15),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xff5DB2E8),
                                      ),
                                      color: Color(0xffffffff),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.directions,
                                          color: Color(0xFF0C2231),
                                          size: 20,
                                        ),
                                        Text("Como llegar")
                                      ],
                                    )))
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            margin: EdgeInsets.only(top: 25, bottom: 25),
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
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Center(
                              child: Text("Buscar Farmacias Cercanas",
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
                      child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          // margin: EdgeInsets.only(top: 10, bottom: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text("Selecciona código postal",
                              //     style: TextStyle(
                              //         fontSize: 18,
                              //         fontWeight: FontWeight.w400,
                              //         color: Color(0xff000000))),
                              Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffffffff),
                                  ),
                                  color: Color(0xffffffff),
                                  // borderRadius:
                                  //     BorderRadius.all(Radius.circular(15)),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.black.withOpacity(0.25),
                                  //     spreadRadius: 0,
                                  //     blurRadius: 4,
                                  //     offset: Offset(
                                  //         0, 4), // changes position of shadow
                                  //   ),
                                  // ]
                                ),
                                child: TextField(
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                  decoration: InputDecoration(
                                      fillColor: Colors.black,
                                      hintText: "Escribe tu código postal",
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
                                  padding: EdgeInsets.only(top: 20, bottom: 20),
                                  // margin: EdgeInsets.only(top: 25, bottom: 25),
                                  child: Container(
                                    height: 50,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Center(
                                              child: Column(
                                            children: [
                                              Text("Farmacia Galindo",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Color(0xff000000))),
                                              Text("Calle Grande 21",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color:
                                                          Color(0xff000000))),
                                            ],
                                          )),
                                        ),
                                        Center(
                                            child: Container(
                                                margin:
                                                    EdgeInsets.only(left: 10),
                                                padding: EdgeInsets.only(
                                                    top: 5,
                                                    bottom: 5,
                                                    left: 15,
                                                    right: 15),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Color(0xff5DB2E8),
                                                  ),
                                                  color: Color(0xffffffff),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    FaIcon(
                                                      FontAwesomeIcons
                                                          .directions,
                                                      color: Color(0xFF0C2231),
                                                      size: 20,
                                                    ),
                                                    Text("Como llegar")
                                                  ],
                                                )))
                                      ],
                                    ),
                                  )),
                              Container(
                                  padding: EdgeInsets.only(top: 20, bottom: 20),
                                  // margin: EdgeInsets.only(top: 25, bottom: 25),
                                  child: Container(
                                    height: 50,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Center(
                                              child: Column(
                                            children: [
                                              Text("Farmacia Ibáñez",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Color(0xff000000))),
                                              Text("Calle pequeña 15",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color:
                                                          Color(0xff000000))),
                                            ],
                                          )),
                                        ),
                                        Center(
                                            child: Container(
                                                margin:
                                                    EdgeInsets.only(left: 10),
                                                padding: EdgeInsets.only(
                                                    top: 5,
                                                    bottom: 5,
                                                    left: 15,
                                                    right: 15),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Color(0xff5DB2E8),
                                                  ),
                                                  color: Color(0xffffffff),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    FaIcon(
                                                      FontAwesomeIcons
                                                          .directions,
                                                      color: Color(0xFF0C2231),
                                                      size: 20,
                                                    ),
                                                    Text("Como llegar")
                                                  ],
                                                )))
                                      ],
                                    ),
                                  ))
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return MapsPage();
              },
            ),
          );
        },
        label: Text('Farmacias Cercanas'),
        icon: Icon(Icons.map),
      ),
    );
  }
}
