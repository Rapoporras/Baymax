import 'package:Care4U/Pages/Help/otraspreguntas.dart';
import 'package:flutter/material.dart';

class Preferencias extends StatefulWidget {
  Preferencias({Key key}) : super(key: key);

  @override
  _Preferencias createState() => new _Preferencias();
}

class _Preferencias extends State<Preferencias> with TickerProviderStateMixin {
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
                                child: Text("Notificaciones",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff000000))),
                              )
                            ],
                          )),
                    ),
                    Container(
                      // padding: EdgeInsets.only(left: 20, right: 20),
                      // margin: EdgeInsets.only(top: 25, bottom: 25),
                      child: Container(
                          height: 50,
                          // width: MediaQuery.of(context).size.width * 0.8,
                          margin: EdgeInsets.only(top: 5, bottom: 5),
                          // decoration: BoxDecoration(

                          //   color: Color(0xffffffff),

                          // ),
                          child: DropdownButton<String>(
                            value: dropdownValue2,
                            // icon: Icon(Icons.arrow_downward),
                            // dropdownColor: Colors.red,
                            iconSize: 24,
                            elevation: 16,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff000000)),
                            // underline: Container(
                            //   // margin: EdgeInsets.only(top: 15),
                            //   height: 2,
                            //   color: Color(0xff0C2231),
                            // ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue2 = newValue;
                              });
                            },
                            items: <String>['Castellano', 'Two', 'Free', 'Four']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
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
                                  offset: Offset(
                                      0, 4), // changes position of shadow
                                ),
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Center(
                                child: Text("Texto",
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
                                child: RadioListTile(
                                  value: 1,
                                  groupValue: selectedRadioTile,
                                  title: Text(
                                    "Pequeño",
                                    style: TextStyle(
                                        // backgroundColor: Colors.white,
                                        fontSize: 12,
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
                                    "Mediano",
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
                                    "Grande",
                                    style: TextStyle(
                                        // backgroundColor: Colors.white,
                                        fontSize: 18,
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
                                    "Gigante",
                                    style: TextStyle(
                                        // backgroundColor: Colors.white,
                                        fontSize: 20,
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
          ],
        ));
  }
}
