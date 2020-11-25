import 'package:flutter/material.dart';
import 'package:smart_select/smart_select.dart';

class OtrasPreguntas extends StatefulWidget {
  OtrasPreguntas({Key key}) : super(key: key);

  @override
  _OtrasPreguntas createState() => new _OtrasPreguntas();
}

class _OtrasPreguntas extends State<OtrasPreguntas>
    with TickerProviderStateMixin {
  List<S2Choice<String>> especialidades = [];

  List<Map<String, dynamic>> medicos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Preguntas Frecuentes",
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
                          height: 70,
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
                          child: Center(
                            child: Text("Todas las preguntas",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000))),
                          )),
                    ),
                    Container(
                      // padding: EdgeInsets.only(left: 20, right: 20),
                      // margin: EdgeInsets.only(top: 25, bottom: 25),
                      child: Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        height: 500,
                        child: ListView(
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.8,
                              margin: EdgeInsets.only(top: 15, bottom: 5),
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
                                      offset: Offset(
                                          0, 4), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(
                                child: Text(
                                    "Cómo puedo compartir mi baja médica",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000))),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.8,
                              margin: EdgeInsets.only(top: 5, bottom: 5),
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
                                      offset: Offset(
                                          0, 4), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(
                                child: Text(
                                    "Dónde están los contactos directos",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000))),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.8,
                              margin: EdgeInsets.only(top: 5, bottom: 5),
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
                                      offset: Offset(
                                          0, 4), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(
                                child: Text("Ver el perfil de otra persona",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000))),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.8,
                              margin: EdgeInsets.only(top: 5, bottom: 5),
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
                                      offset: Offset(
                                          0, 4), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(
                                child: Text("Hacer responsable a una persona",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000))),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.8,
                              margin: EdgeInsets.only(top: 5, bottom: 5),
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
                                      offset: Offset(
                                          0, 4), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(
                                child: Text("Solicitar cita previa",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000))),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.8,
                              margin: EdgeInsets.only(top: 5, bottom: 5),
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
                                      offset: Offset(
                                          0, 4), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(
                                child: Text("Donde está la receta virtual",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000))),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.8,
                              margin: EdgeInsets.only(top: 5, bottom: 5),
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
                                      offset: Offset(
                                          0, 4), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(
                                child: Text("Donde está la receta virtual",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000))),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.8,
                              margin: EdgeInsets.only(top: 5, bottom: 5),
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
                                      offset: Offset(
                                          0, 4), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(
                                child: Text("Solicitar cita previa",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000))),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.8,
                              margin: EdgeInsets.only(top: 5, bottom: 5),
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
                                      offset: Offset(
                                          0, 4), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(
                                child: Text("Solicitar cita previa",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000))),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.8,
                              margin: EdgeInsets.only(top: 5, bottom: 5),
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
                                      offset: Offset(
                                          0, 4), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(
                                child: Text("Donde está la receta virtual",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000))),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.8,
                              margin: EdgeInsets.only(top: 5, bottom: 5),
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
                                      offset: Offset(
                                          0, 4), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(
                                child: Text("Solicitar cita previa",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000))),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.8,
                              margin: EdgeInsets.only(top: 5, bottom: 15),
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
                                      offset: Offset(
                                          0, 4), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(
                                child: Text("Donde está la receta virtual",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
