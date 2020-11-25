import 'package:Care4U/Pages/Help/info.dart';
import 'package:Care4U/Pages/Help/preguntas.dart';
import 'package:Care4U/Pages/Help/video.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Ayuda extends StatefulWidget {
  Ayuda({Key key}) : super(key: key);

  @override
  _Ayuda createState() => new _Ayuda();
}

class _Ayuda extends State<Ayuda> with TickerProviderStateMixin {
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
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Color(0xff0c2231)),
              onPressed: () => {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/home', (Route<dynamic> route) => false)
                  }),
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
                                    FontAwesomeIcons.solidPlayCircle,
                                    color: Color(0xFFffffff),
                                    size: 30,
                                  ),
                                )),
                            Container(
                              height: 100,
                              padding: EdgeInsets.only(left: 15),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Tutorial",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff0C2231))),
                                    Text(
                                        "Volver a ver el tutorial del inicio y volver \na configurar la aplicación",
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
                      return VideoPlayerApp();
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
                                    FontAwesomeIcons.solidQuestionCircle,
                                    color: Color(0xFFffffff),
                                    size: 30,
                                  ),
                                )),
                            Container(
                              height: 100,
                              padding: EdgeInsets.only(left: 15),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Preguntas frecuentes",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff0C2231))),
                                    Text(
                                        "Recopilación de preguntas \nactualizadas cada semana",
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
                      return Preguntas();
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
                                    FontAwesomeIcons.infoCircle,
                                    color: Color(0xFFffffff),
                                    size: 30,
                                  ),
                                )),
                            Container(
                              height: 100,
                              padding: EdgeInsets.only(left: 15),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Ayuda",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff0C2231))),
                                    Text(
                                        "Información y contacto con los \nencargados de la aplicación",
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
                      return Info();
                    },
                  ),
                );
              },
            ),
          ],
        ));
  }
}
