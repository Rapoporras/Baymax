import 'package:Care4U/Component/charts.dart';
import 'package:Care4U/Pages/Setting/maps.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Evolucion extends StatefulWidget {
  Evolucion({Key key}) : super(key: key);

  @override
  _Evolucion createState() => new _Evolucion();
}

class _Evolucion extends State<Evolucion> with TickerProviderStateMixin {
  // List<charts.Series<TimeSeriesSales, DateTime>> seriesList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Evolucion Frecuentes",
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
                              child: Text("Evolucion habitual",
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
                        height: 400,
                        // width: MediaQuery.of(context).size.width * 0.8,
                        // margin: EdgeInsets.only(top: 5, bottom: 5),
                        // decoration: BoxDecoration(

                        // color: Color(0xfff4ffff),

                        // ),
                        child: Center(child: SimpleBarChart.withSampleData())),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     Navigator.of(context).push(
      //       MaterialPageRoute(
      //         builder: (context) {
      //           return MapsPage();
      //         },
      //       ),
      //     );
      //   },
      //   label: Text('Evolucions Cercanas'),
      //   icon: Icon(Icons.map),
      // ),
    );
  }
}
