import 'package:flutter/material.dart';
import 'package:Care4U/Component/webView.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PruebasClinicas extends StatefulWidget {
  PruebasClinicas({Key key}) : super(key: key);

  @override
  _PruebasClinicas createState() => new _PruebasClinicas();
}

class _PruebasClinicas extends State<PruebasClinicas>
    with TickerProviderStateMixin {
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
          "PruebasClinicas Frecuentes",
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
                              child: Text("Pruebas Analiticas",
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
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text("Analítica Completa 21/11/2015",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff000000))),
                          ),
                        ),
                        Container(

                            // margin: EdgeInsets.only(top: 10, bottom: 25),
                            child: InkWell(
                          child: Container(
                            padding: EdgeInsets.only(left: 15, right: 15),
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
                              child: FaIcon(
                                FontAwesomeIcons.fileMedicalAlt,
                                color: Color(0xFF0C2231).withOpacity(0.63),
                                size: 20,
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return WebViewApp(
                                      "https://firebasestorage.googleapis.com/v0/b/medicosregistrados.appspot.com/o/%20smXb5Y6pEHyqaKicXDXf%2Fpruebas%2FAnaliticas%2FAnalitica.pdf");
                                },
                              ),
                            );
                          },
                        )),
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
                              child: Text("Pruebas imágen",
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
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text("Ortopantomografía",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff000000))),
                          ),
                        ),
                        Container(

                            // margin: EdgeInsets.only(top: 10, bottom: 25),
                            child: InkWell(
                          child: Container(
                            padding: EdgeInsets.only(left: 15, right: 15),
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
                              child: FaIcon(
                                FontAwesomeIcons.filePrescription,
                                color: Color(0xFF0C2231).withOpacity(0.63),
                                size: 20,
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return WebViewApp(
                                      "https://firebasestorage.googleapis.com/v0/b/medicosregistrados.appspot.com/o/%20smXb5Y6pEHyqaKicXDXf%2Fpruebas%2FImagen%2Fdescarga%20(1).jfif?alt=media&token=fbd1183f-90d0-4593-af81-bc727273fbef");
                                },
                              ),
                            );
                          },
                        )),
                      ],
                    ),
                  )),
                  Container(
                      child: Container(
                    // height: 70,
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text("radiografia A.P en Supino Abdomen",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff000000))),
                          ),
                        ),
                        Container(

                            // margin: EdgeInsets.only(top: 10, bottom: 25),
                            child: InkWell(
                          child: Container(
                            padding: EdgeInsets.only(left: 15, right: 15),
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
                              child: FaIcon(
                                FontAwesomeIcons.filePrescription,
                                color: Color(0xFF0C2231).withOpacity(0.63),
                                size: 20,
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return WebViewApp(
                                      "https://firebasestorage.googleapis.com/v0/b/medicosregistrados.appspot.com/o/%20smXb5Y6pEHyqaKicXDXf%2Fpruebas%2FImagen%2Fdescarga.jfif?alt=media&token=51b8cf50-cf69-48eb-9a1e-b1a11222f0f0");
                                },
                              ),
                            );
                          },
                        )),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return MapsPage();
          //     },
          //   ),
          // );
        },
        label: Text('Añadir Prueba'),
        icon: Icon(Icons.add),
      ),
    );
  }
}
