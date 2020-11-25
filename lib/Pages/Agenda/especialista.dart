import 'package:Care4U/Pages/Agenda/confirmacionCita.dart';
import 'package:flutter/material.dart';
import 'package:smart_select/smart_select.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Especialista extends StatefulWidget {
  Especialista({Key key}) : super(key: key);

  @override
  _Especialista createState() => new _Especialista();
}

class _Especialista extends State<Especialista> with TickerProviderStateMixin {
  List<S2Choice<String>> especialidades = [];

  List<Map<String, dynamic>> medicos = [];
  @override
  void initState() {
    super.initState();
    obtenerMedicos();
    obtenerEspecialidades();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Nueva cita",
            style: TextStyle(
                color: Color(0xff0c2231),
                fontSize: 22,
                fontWeight: FontWeight.w700),
          ),
        ),
        body: ListView(
          children: [
            tipoCita(),
            doctor(),
            fechaHora(),
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

  void obtenerEspecialidades() async {
    especialidades.clear();
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    CollectionReference _stocks =
        _firestore.collection('especialidadesDisponibles');
    QuerySnapshot snapshot = await _stocks.get();
    // Map<String, dynamic> data = snapshot.docs[1].data();

    for (var item in snapshot.docs) {
      especialidades.add(S2Choice<String>(
          value: item.data()["id"].toString(), title: item.data()["nombre"]));
    }
    // print(especialidades);
  }

  void obtenerMedicos() async {
    // medicos.clear();
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    CollectionReference _stocks = _firestore.collection('medicosRegistrados');
    QuerySnapshot snapshot = await _stocks.get();
    // Map<String, dynamic> data = snapshot.docs[1].data();

    for (var item in snapshot.docs) {
      medicos.add(item.data());
    }
    // await new Future.delayed(const Duration(seconds: 5));
    // print(medicos);
  }

  Widget tipoCita() {
    String especialidad = "";

    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      margin: EdgeInsets.only(top: 25, bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text("¿Qué tipo de cita necesitas?",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000))),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
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
            child: SmartSelect<String>.single(
                title: 'Tipo de citas',
                placeholder: 'Selecciona un tipo de cita',
                value: especialidad,
                onChange: (state) => setState(() => especialidad = state.value),
                choiceItems: especialidades,
                // choiceGrouped: true,
                // modalFilter: true,
                // modalFilterAuto: true,
                modalType: S2ModalType.popupDialog,
                tileBuilder: (context, state) {
                  return S2Tile.fromState(
                    state,
                    isTwoLine: true,
                    leading: FaIcon(
                      FontAwesomeIcons.briefcaseMedical,
                      color: Color(0xFF000000),
                      size: 40,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget doctor() {
    List<String> medico = [];

    print(medicos);
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      // height: 80,
      margin: EdgeInsets.only(top: 25, bottom: 25),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text("¿Qué medico necesitas?",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000))),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
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
            child: SmartSelect<String>.multiple(
                title: 'Médicos',
                placeholder: 'Selecciona un médico',
                value: medico,
                onChange: (state) => setState(() => medico = state.value),
                choiceItems: S2Choice.listFrom<String, Map>(
                  source: medicos,
                  value: (index, item) => item['dni'],
                  title: (index, item) =>
                      item['nombre'] +
                      " " +
                      item["apellido1"] +
                      " " +
                      item["apellido2"],
                  group: (index, item) => item['especialidad'],
                ),
                choiceGrouped: true,
                choiceConfig: const S2ChoiceConfig(
                  useDivider: true,
                ),
                modalType: S2ModalType.popupDialog,
                modalFilter: true,
                tileBuilder: (context, state) {
                  return S2Tile.fromState(state,
                      isTwoLine: true,
                      leading: FaIcon(
                        FontAwesomeIcons.userMd,
                        color: Color(0xFF000000),
                        size: 40,
                      ));
                }),
          )
        ],
      ),
    );
  }

  Widget fechaHora() {
    return Container(
        margin: EdgeInsets.only(top: 25, bottom: 25),
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
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ]),
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
