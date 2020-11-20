import 'package:baymax/Pages/Agenda/especialista.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart' show DateFormat;

class Agenda extends StatefulWidget {
  Agenda({Key key}) : super(key: key);

  @override
  _Agenda createState() => new _Agenda();
}

class _Agenda extends State<Agenda> with TickerProviderStateMixin {
  DateTime _currentDate = DateTime(2019, 2, 3);
  DateTime _currentDate2 = DateTime(2019, 2, 3);
  String _currentMonth = DateFormat.yMMM().format(DateTime(2019, 2, 3));
  DateTime _targetDateTime = DateTime(2019, 2, 3);
//  List<DateTime> _markedDate = [DateTime(2018, 9, 20), DateTime(2018, 10, 11)];
  static Widget _eventIcon = new Container(
    decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: new Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );

  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {
      new DateTime(2019, 2, 10): [
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.red,
            height: 5.0,
            width: 5.0,
          ),
        ),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 2',
          icon: _eventIcon,
        ),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 3',
          icon: _eventIcon,
        ),
      ],
    },
  );

  CalendarCarousel _calendarCarousel, _calendarCarouselNoHeader;

  @override
  void initState() {
    /// Add more events to _markedDateMap EventList
    _markedDateMap.add(
        new DateTime(2019, 2, 25),
        new Event(
          date: new DateTime(2019, 2, 25),
          title: 'Event 5',
          icon: _eventIcon,
        ));

    _markedDateMap.add(
        new DateTime(2019, 2, 10),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 4',
          icon: _eventIcon,
        ));

    _markedDateMap.addAll(new DateTime(2020, 11, 11), [
      new Event(
        date: new DateTime(2019, 2, 11),
        title: 'Event 1',
        icon: _eventIcon,
      ),
      new Event(
        date: new DateTime(2019, 2, 11),
        title: 'Event 2',
        icon: _eventIcon,
      ),
      new Event(
        date: new DateTime(2019, 2, 11),
        title: 'Event 3',
        icon: _eventIcon,
      ),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _calendarCarousel = CalendarCarousel<Event>(
      onDayPressed: (DateTime date, List<Event> events) {
        this.setState(() => _currentDate = date);
        events.forEach((event) => print(event.title));
      },
      weekendTextStyle: TextStyle(
        color: Colors.red,
      ),
      thisMonthDayBorderColor: Colors.grey,
//          weekDays: null, /// for pass null when you do not want to render weekDays
      headerText: 'Custom Header',
      weekFormat: true,
      markedDatesMap: _markedDateMap,
      height: 200.0,
      selectedDateTime: _currentDate2,

      showIconBehindDayText: true,
//          daysHaveCircularBorder: false, /// null for not rendering any border, true for circular border, false for rectangular border
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      markedDateShowIcon: true,
      markedDateIconMaxShown: 2,
      selectedDayTextStyle: TextStyle(
        color: Colors.yellow,
      ),
      todayTextStyle: TextStyle(
        color: Colors.blue,
      ),
      markedDateIconBuilder: (event) {
        return event.icon;
      },
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      todayButtonColor: Colors.transparent,
      todayBorderColor: Colors.green,
      markedDateMoreShowTotal:
          true, // null for not showing hidden events indicator
//          markedDateIconMargin: 9,
//          markedDateIconOffset: 3,
    );

    /// Example Calendar Carousel without header and custom prev & next button
    _calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: Colors.green,
      onDayPressed: (DateTime date, List<Event> events) {
        this.setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
      },
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      weekendTextStyle: TextStyle(
        color: Colors.red,
      ),
      thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
//      firstDayOfWeek: 4,
      markedDatesMap: _markedDateMap,
      height: 280.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      markedDateCustomShapeBorder:
          CircleBorder(side: BorderSide(color: Colors.yellow)),
      markedDateCustomTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
      showHeader: false,
      todayTextStyle: TextStyle(
        color: Colors.blue,
      ),
      // markedDateShowIcon: true,
      // markedDateIconMaxShown: 2,
      // markedDateIconBuilder: (event) {
      //   return event.icon;
      // },
      // markedDateMoreShowTotal:
      //     true,
      todayButtonColor: Colors.yellow,
      selectedDayTextStyle: TextStyle(
        color: Colors.yellow,
      ),
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      prevDaysTextStyle: TextStyle(
        fontSize: 16,
        color: Colors.pinkAccent,
      ),
      inactiveDaysTextStyle: TextStyle(
        color: Colors.tealAccent,
        fontSize: 16,
      ),
      onCalendarChanged: (DateTime date) {
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );

    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Agenda"),
        ),
        body: SingleChildScrollView(
          child: mainAgenda(),
        ));
  }

  Widget mainAgenda() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffB9B6B6),
                ),
                color: Color(0xffB9B6B6),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 30.0,
                    bottom: 1.0,
                    left: 16.0,
                    right: 16.0,
                  ),
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        _currentMonth,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      )),
                      FlatButton(
                        child: Text('PREV'),
                        onPressed: () {
                          setState(() {
                            _targetDateTime = DateTime(_targetDateTime.year,
                                _targetDateTime.month - 1);
                            _currentMonth =
                                DateFormat.yMMM().format(_targetDateTime);
                          });
                        },
                      ),
                      FlatButton(
                        child: Text('NEXT'),
                        onPressed: () {
                          setState(() {
                            _targetDateTime = DateTime(_targetDateTime.year,
                                _targetDateTime.month + 1);
                            _currentMonth =
                                DateFormat.yMMM().format(_targetDateTime);
                          });
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.0),
                  child: _calendarCarouselNoHeader,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 140,
          padding: EdgeInsets.only(left: 20, right: 20),
          margin: EdgeInsets.only(bottom: 20),
          width: MediaQuery.of(context).size.width,
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffb9b6b6),
                  ),
                  color: Color(0xffb9b6b6),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 50,
                        // color: Colors.green,
                        height: 70,
                        margin: EdgeInsets.only(top: 5, left: 15),
                        child: FaIcon(
                          FontAwesomeIcons.userCircle,
                          color: Color(0xFF000000),
                          size: 50,
                        ),
                      ),
                      Container(
                        height: 70,
                        margin: EdgeInsets.only(top: 10, left: 15),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Dra. Méndez - Nutricionista",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xff000000))),
                              Container(
                                width: 280,
                                margin: EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("11/11/2020",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff000000))),
                                    Text("09:30",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff000000))),
                                    Text("Sala 318",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff000000)))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffffffff),
                              ),
                              color: Color(0xffffffff),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Center(
                            child: Text("Cancelar",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff000000))),
                          ),
                        ),
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffffffff),
                              ),
                              color: Color(0xffffffff),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Center(
                            child: Text("Modificar",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff000000))),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
        InkWell(
          child: Container(
            height: 58,
            padding: EdgeInsets.only(left: 20, right: 20),
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffb9b6b6),
                  ),
                  color: Color(0xffb9b6b6),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Center(
                  child: Text(
                "Solicitar nueva cita",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff000000)),
              )),
            ),
          ),
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Especialista()),
            // );
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return Especialista();
                },
              ),
            );
          },
        )
        //
      ],
    );
  }
}
