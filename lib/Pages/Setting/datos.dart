import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Datos extends StatefulWidget {
  Datos({Key key}) : super(key: key);

  @override
  _Datos createState() => new _Datos();
}

class _Datos extends State<Datos> with TickerProviderStateMixin {
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
            "Preferencias Frecuentes",
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
                                  offset: Offset(
                                      0, 4), // changes position of shadow
                                ),
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Center(
                                child: Text("Intolerancias y alergias",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000))),
                              )
                            ],
                          )),
                    ),
                    Container(
                        padding: EdgeInsets.all(10),
                        // margin: EdgeInsets.only(top: 25, bottom: 25),
                        child: Container(
                            height: 150,
                            padding: EdgeInsets.all(10),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffF6F6F6),
                                  ),
                                  color: Color(0xffF6F6F6),
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
                              child: TextField(
                                maxLines: 10,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                                decoration: InputDecoration(
                                    fillColor: Colors.black,
                                    hintText:
                                        "Detalla brevemente tus alergias e intolerancias",
                                    hintStyle: TextStyle(
                                        // backgroundColor: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black)),
                                onChanged: (text) {
                                  value = text;
                                },
                              ),
                            )))
                  ],
                ),
              ),
            ),
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
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 9,
                              child: Center(
                                child: Text("Género",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000))),
                              ),
                            ),
                            Expanded(
                              child: FaIcon(
                                FontAwesomeIcons.infoCircle,
                                color: Color(0xFF0C2231),
                                size: 25,
                              ),
                            )
                          ],
                        ),
                      ),
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
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: Center(
                                  child: ToggleSwitch(
                                    minWidth: 150.0,
                                    cornerRadius: 20.0,
                                    activeBgColor: Color(0xff5DB2E8),
                                    activeFgColor: Colors.white,
                                    inactiveBgColor: Colors.grey,
                                    inactiveFgColor: Colors.white,
                                    labels: ['Público', 'Privado'],
                                    icons: [
                                      FontAwesomeIcons.lockOpen,
                                      FontAwesomeIcons.lock,
                                    ],
                                    onToggle: (index) {
                                      print('switched to: $index');
                                    },
                                  ),
                                )),
                            Container(
                                height: 35,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: RadioListTile(
                                  value: 1,
                                  groupValue: selectedRadioTile,
                                  title: Text(
                                    "Hombre",
                                    style: TextStyle(
                                        // backgroundColor: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                  onChanged: (val) {
                                    setSelectedRadioTile(val);
                                  },
                                  activeColor: Color(0xff0C2231),
                                  // selected: true,
                                )),
                            Container(
                                height: 35,
                                // width: MediaQuery.of(context).size.width * 0.8,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                // decoration: BoxDecoration(

                                //   color: Color(0xffffffff),

                                // ),
                                child: RadioListTile(
                                  value: 2,
                                  groupValue: selectedRadioTile,
                                  title: Text(
                                    "Mujer",
                                    style: TextStyle(
                                        // backgroundColor: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                  onChanged: (val) {
                                    setSelectedRadioTile(val);
                                  },
                                  activeColor: Color(0xff0C2231),
                                  // selected: true,
                                )),
                            Container(
                                height: 35,
                                // width: MediaQuery.of(context).size.width * 0.8,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                // decoration: BoxDecoration(

                                //   color: Color(0xffffffff),

                                // ),
                                child: RadioListTile(
                                  value: 3,
                                  groupValue: selectedRadioTile,
                                  title: Text(
                                    "Hombre Transexual",
                                    style: TextStyle(
                                        // backgroundColor: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                  onChanged: (val) {
                                    setSelectedRadioTile(val);
                                  },
                                  activeColor: Color(0xff0C2231),
                                  // selected: true,
                                )),
                            Container(
                                height: 35,
                                // width: MediaQuery.of(context).size.width * 0.8,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                // decoration: BoxDecoration(

                                //   color: Color(0xffffffff),

                                // ),
                                child: RadioListTile(
                                  value: 4,
                                  groupValue: selectedRadioTile,
                                  title: Text(
                                    "Mujer Transexual",
                                    style: TextStyle(
                                        // backgroundColor: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                  onChanged: (val) {
                                    setSelectedRadioTile(val);
                                  },
                                  activeColor: Color(0xff0C2231),
                                  // selected: true,
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
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
                                child: Text("Dieta",
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
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: Center(
                                  child: ToggleSwitch(
                                    minWidth: 150.0,
                                    cornerRadius: 20.0,
                                    activeBgColor: Color(0xff5DB2E8),
                                    activeFgColor: Colors.white,
                                    inactiveBgColor: Colors.grey,
                                    inactiveFgColor: Colors.white,
                                    labels: ['Público', 'Privado'],
                                    icons: [
                                      FontAwesomeIcons.lockOpen,
                                      FontAwesomeIcons.lock,
                                    ],
                                    onToggle: (index) {
                                      print('switched to: $index');
                                    },
                                  ),
                                )),
                            Container(
                                height: 35,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: RadioListTile(
                                  value: 1,
                                  groupValue: selectedRadioTile,
                                  title: Text(
                                    "Vegana",
                                    style: TextStyle(
                                        // backgroundColor: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                  onChanged: (val) {
                                    setSelectedRadioTile(val);
                                  },
                                  activeColor: Color(0xff0C2231),
                                  // selected: true,
                                )),
                            Container(
                                height: 35,
                                // width: MediaQuery.of(context).size.width * 0.8,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                // decoration: BoxDecoration(

                                //   color: Color(0xffffffff),

                                // ),
                                child: RadioListTile(
                                  value: 2,
                                  groupValue: selectedRadioTile,
                                  title: Text(
                                    "Vegetariana",
                                    style: TextStyle(
                                        // backgroundColor: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                  onChanged: (val) {
                                    setSelectedRadioTile(val);
                                  },
                                  activeColor: Color(0xff0C2231),
                                  // selected: true,
                                )),
                            Container(
                                height: 35,
                                // width: MediaQuery.of(context).size.width * 0.8,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                // decoration: BoxDecoration(

                                //   color: Color(0xffffffff),

                                // ),
                                child: RadioListTile(
                                  value: 3,
                                  groupValue: selectedRadioTile,
                                  title: Text(
                                    "Flexiteriana",
                                    style: TextStyle(
                                        // backgroundColor: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                  onChanged: (val) {
                                    setSelectedRadioTile(val);
                                  },
                                  activeColor: Color(0xff0C2231),
                                  // selected: true,
                                )),
                            Container(
                                height: 35,
                                // width: MediaQuery.of(context).size.width * 0.8,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                // decoration: BoxDecoration(

                                //   color: Color(0xffffffff),

                                // ),
                                child: RadioListTile(
                                  value: 4,
                                  groupValue: selectedRadioTile,
                                  title: Text(
                                    "Microbiótica",
                                    style: TextStyle(
                                        // backgroundColor: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                  onChanged: (val) {
                                    setSelectedRadioTile(val);
                                  },
                                  activeColor: Color(0xff0C2231),
                                  // selected: true,
                                )),
                            Container(
                                height: 35,
                                // width: MediaQuery.of(context).size.width * 0.8,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                // decoration: BoxDecoration(

                                //   color: Color(0xffffffff),

                                // ),
                                child: RadioListTile(
                                  value: 5,
                                  groupValue: selectedRadioTile,
                                  title: Text(
                                    "Convencional",
                                    style: TextStyle(
                                        // backgroundColor: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                  onChanged: (val) {
                                    setSelectedRadioTile(val);
                                  },
                                  activeColor: Color(0xff0C2231),
                                  // selected: true,
                                )),
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
