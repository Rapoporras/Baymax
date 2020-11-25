// import 'package:Care4U/Pages/Help/otrasAlarma.dart';
import 'package:flutter/material.dart';

import 'package:date_time_picker/date_time_picker.dart';

class Alarma extends StatefulWidget {
  Alarma({Key key}) : super(key: key);

  @override
  _Alarma createState() => new _Alarma();
}

class _Alarma extends State<Alarma> with TickerProviderStateMixin {
  bool isSwitched = false;
  String dropdownValue = 'One';
  String dropdownValue2 = 'Selecciona medicamento';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Alarma",
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
                        // height: 70,
                        // padding: EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          children: [
                            Container(
                                height: 35,
                                // width: MediaQuery.of(context).size.width * 0.8,
                                margin: EdgeInsets.only(top: 15, bottom: 5),
                                // decoration: BoxDecoration(

                                //   color: Color(0xffffffff),

                                // ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Vibración",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff000000))),
                                    Switch(
                                      value: isSwitched,
                                      onChanged: (value) {
                                        setState(() {
                                          isSwitched = value;
                                          // box.put(
                                          //     'movilidadreducida', isSwitched);
                                        });
                                      },
                                      inactiveTrackColor: Color(0xff0C2231),
                                      activeTrackColor: Color(0xff5DB2E8),
                                      activeColor: Color(0xff0C2231),
                                    ),
                                  ],
                                )),
                            Divider(
                              color: Color(0xff5DB2E8),
                              // height: 2,
                              thickness: 1,
                              // indent: 20,
                              // endIndent: 0,
                            ),
                            Container(
                                height: 35,
                                // width: MediaQuery.of(context).size.width * 0.8,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                // decoration: BoxDecoration(

                                //   color: Color(0xffffffff),

                                // ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Sonido",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff000000))),
                                    Switch(
                                      value: isSwitched,
                                      onChanged: (value) {
                                        setState(() {
                                          isSwitched = value;
                                          // box.put(
                                          //     'movilidadreducida', isSwitched);
                                        });
                                      },
                                      inactiveTrackColor: Color(0xff0C2231),
                                      activeTrackColor: Color(0xff5DB2E8),
                                      activeColor: Color(0xff0C2231),
                                    ),
                                  ],
                                )),
                            Container(
                                height: 35,
                                // width: MediaQuery.of(context).size.width * 0.8,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                // decoration: BoxDecoration(

                                //   color: Color(0xffffffff),

                                // ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Melodía",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff000000))),
                                    DropdownButton<String>(
                                      value: dropdownValue,
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
                                          dropdownValue = newValue;
                                        });
                                      },
                                      items: <String>[
                                        'One',
                                        'Two',
                                        'Free',
                                        'Four'
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    )
                                  ],
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
                                child: Text("Medicamento",
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
                        // height: 70,
                        // padding: EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          children: [
                            Container(
                                height: 35,
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
                                  items: <String>[
                                    'Selecciona medicamento',
                                    'Two',
                                    'Free',
                                    'Four'
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                )),
                            Container(
                                height: 35,
                                // width: MediaQuery.of(context).size.width * 0.8,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                // decoration: BoxDecoration(

                                //   color: Color(0xffffffff),

                                // ),
                                child: Text(
                                    "Este medicamento se debe ingerir \ncada 8 horas",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff000000)))),
                            Container(
                              height: 120,
                              margin: EdgeInsets.only(top: 5, bottom: 5),
                              child: fechaHora(),
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      child: Container(
                                        height: 40,
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xffC5EDFC),
                                            ),
                                            color: Color(0xffC5EDFC),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
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
                                          child: Text("00:00",
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
                                    ),
                                    InkWell(
                                      child: Container(
                                        height: 40,
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xffC5EDFC),
                                            ),
                                            color: Color(0xffC5EDFC),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
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
                                          child: Text("08:00",
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
                                    ),
                                    InkWell(
                                      child: Container(
                                        height: 40,
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xffC5EDFC),
                                            ),
                                            color: Color(0xffC5EDFC),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
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
                                          child: Text("16:00",
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
                                    )
                                  ],
                                )),
                            Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                margin: EdgeInsets.only(top: 10, bottom: 25),
                                child: InkWell(
                                  child: Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xffC5EDFC),
                                        ),
                                        color: Color(0xffC5EDFC),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
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
                                      child: Text("Activar alarma",
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
                                ))
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

  Widget fechaHora() {
    return Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Selecciona fecha y hora",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000))),
            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffffffff),
                ),
                color: Color(0xffffffff),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: DateTimePicker(
                type: DateTimePickerType.dateTimeSeparate,
                dateMask: 'd MMM, yyyy',
                initialValue: DateTime.now().toString(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                icon: Icon(Icons.event),
                dateLabelText: 'Date',
                timeLabelText: "Hour",
                selectableDayPredicate: (date) {
                  // Disable weekend days to select from the calendar
                  if (date.weekday == 6 || date.weekday == 7) {
                    return false;
                  }

                  return true;
                },
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
              ),
            ),
          ],
        ));
  }
}
