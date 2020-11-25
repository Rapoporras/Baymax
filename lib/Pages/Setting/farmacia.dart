import 'dart:async';
import 'dart:collection';

import 'package:Care4U/Pages/Setting/maps.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
                              child: Text("Farmacia habitual",
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
                        height: 30,
                        // width: MediaQuery.of(context).size.width * 0.8,
                        // margin: EdgeInsets.only(top: 5, bottom: 5),
                        // decoration: BoxDecoration(

                        // color: Color(0xfff4ffff),

                        // ),
                        child: Center(
                          child: Text("Farmacia Galindo, Calle Grande 21",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff000000))),
                        )),
                  )
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
                              child: Text("Pedir medicamentos online",
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
                          child: InkWell(
                            child: Container(
                              height: 60,
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
                                child: Text("Realizar pedido",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff000000))),
                              ),
                            ),
                            onTap: () {
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(
                              //     builder: (context) {
                              //       return OtrasPreferencias();
                              //     },
                              //   ),
                              // );
                            },
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
