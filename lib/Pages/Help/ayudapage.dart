import 'package:Care4U/Pages/Agenda/confirmacionCita.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:smart_select/smart_select.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AyudaPage extends StatefulWidget {
  AyudaPage({Key key}) : super(key: key);

  @override
  _AyudaPage createState() => new _AyudaPage();
}

class _AyudaPage extends State<AyudaPage> with TickerProviderStateMixin {
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
                child: InkWell(
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffC5EDFC),
                        ),
                        color: Color(0xffC5EDFC),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                      child: Text("Solicitar Cita",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000))),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return ConfirmacionCita();
                        },
                      ),
                    );
                  },
                ))
          ],
        ));
  }
}
