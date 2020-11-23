import 'package:baymax/Pages/Agenda/confirmacionCita.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:smart_select/smart_select.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Especialista extends StatefulWidget {
  Especialista({Key key}) : super(key: key);

  @override
  _Especialista createState() => new _Especialista();
}

class _Especialista extends State<Especialista> with TickerProviderStateMixin {
  List<Map<String, dynamic>> smartphones = [
    {
      'id': 'sk3',
      'name': 'Samsung Keystone 3',
      'brand': 'Samsung',
      'category': 'Budget Phone'
    },
    {
      'id': 'n106',
      'name': 'Nokia 106',
      'brand': 'Nokia',
      'category': 'Budget Phone'
    },
    {
      'id': 'n150',
      'name': 'Nokia 150',
      'brand': 'Nokia',
      'category': 'Budget Phone'
    },
    {
      'id': 'r7a',
      'name': 'Redmi 7A',
      'brand': 'Xiaomi',
      'category': 'Mid End Phone'
    },
    {
      'id': 'ga10s',
      'name': 'Galaxy A10s',
      'brand': 'Samsung',
      'category': 'Mid End Phone'
    },
    {
      'id': 'rn7',
      'name': 'Redmi Note 7',
      'brand': 'Xiaomi',
      'category': 'Mid End Phone'
    },
    {
      'id': 'ga20s',
      'name': 'Galaxy A20s',
      'brand': 'Samsung',
      'category': 'Mid End Phone'
    },
    {
      'id': 'mc9',
      'name': 'Meizu C9',
      'brand': 'Meizu',
      'category': 'Mid End Phone'
    },
    {
      'id': 'm6',
      'name': 'Meizu M6',
      'brand': 'Meizu',
      'category': 'Mid End Phone'
    },
    {
      'id': 'ga2c',
      'name': 'Galaxy A2 Core',
      'brand': 'Samsung',
      'category': 'Mid End Phone'
    },
    {
      'id': 'r6a',
      'name': 'Redmi 6A',
      'brand': 'Xiaomi',
      'category': 'Mid End Phone'
    },
    {
      'id': 'r5p',
      'name': 'Redmi 5 Plus',
      'brand': 'Xiaomi',
      'category': 'Mid End Phone'
    },
    {
      'id': 'ga70',
      'name': 'Galaxy A70',
      'brand': 'Samsung',
      'category': 'Mid End Phone'
    },
    {
      'id': 'ai11',
      'name': 'iPhone 11 Pro',
      'brand': 'Apple',
      'category': 'Flagship Phone'
    },
    {
      'id': 'aixr',
      'name': 'iPhone XR',
      'brand': 'Apple',
      'category': 'Flagship Phone'
    },
    {
      'id': 'aixs',
      'name': 'iPhone XS',
      'brand': 'Apple',
      'category': 'Flagship Phone'
    },
    {
      'id': 'aixsm',
      'name': 'iPhone XS Max',
      'brand': 'Apple',
      'category': 'Flagship Phone'
    },
    {
      'id': 'hp30',
      'name': 'Huawei P30 Pro',
      'brand': 'Huawei',
      'category': 'Flagship Phone'
    },
    {
      'id': 'ofx',
      'name': 'Oppo Find X',
      'brand': 'Oppo',
      'category': 'Flagship Phone'
    },
    {
      'id': 'gs10',
      'name': 'Galaxy S10+',
      'brand': 'Samsung',
      'category': 'Flagship Phone'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Nueva cita"),
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
                    height: 80,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffB9B6B6),
                        ),
                        color: Color(0xffB9B6B6),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: Text("Solicitar Cita",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
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

  Widget tipoCita() {
    List<String> _smartphone = [];

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
                    fontWeight: FontWeight.normal,
                    color: Color(0xff000000))),
          ),
          Container(
            child: SmartSelect<String>.multiple(
                title: 'Tipo de citas',
                placeholder: 'Listado de citas',
                value: _smartphone,
                onChange: (state) => setState(() => _smartphone = state.value),
                choiceItems: S2Choice.listFrom<String, Map>(
                  source: smartphones,
                  value: (index, item) => item['id'],
                  title: (index, item) => item['name'],
                  group: (index, item) => item['brand'],
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
                        FontAwesomeIcons.briefcaseMedical,
                        color: Color(0xFF000000),
                        size: 40,
                      ));
                }),
          )
        ],
      ),
    );
  }

  Widget doctor() {
    List<String> _smartphone = [];

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
                    fontWeight: FontWeight.normal,
                    color: Color(0xff000000))),
          ),
          Container(
            child: SmartSelect<String>.multiple(
                title: 'Medicos',
                placeholder: 'Listado de Médicos',
                value: _smartphone,
                onChange: (state) => setState(() => _smartphone = state.value),
                choiceItems: S2Choice.listFrom<String, Map>(
                  source: smartphones,
                  value: (index, item) => item['id'],
                  title: (index, item) => item['name'],
                  group: (index, item) => item['brand'],
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
                    fontWeight: FontWeight.normal,
                    color: Color(0xff000000))),
            DateTimePicker(
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
          ],
        ));
  }
}
