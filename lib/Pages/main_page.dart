import 'package:baymax/Component/config.dart';
import 'package:baymax/Component/fab_bottom_app_bar.dart';
import 'package:baymax/Pages/page1.dart';
import 'package:baymax/Pages/page2.dart';
import 'package:baymax/Pages/page3.dart';
import 'package:baymax/Pages/page4.dart';
import 'package:baymax/Pages/page5.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  final String title = "hola";

  @override
  _MainPage createState() => new _MainPage();
}

class _MainPage extends State<MainPage> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    Page1(),
    Page2(),
    Page3(),
    Page4(),
  ];

  void _selectedTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: 'Id Card',
        color: Colors.grey,
        selectedColor: Colors.blue,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.menu, text: 'This'),
          FABBottomAppBarItem(iconData: Icons.layers, text: 'Is'),
          FABBottomAppBarItem(iconData: Icons.dashboard, text: 'Bottom'),
          FABBottomAppBarItem(iconData: Icons.info, text: 'Bar'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return Page5();
          //     },
          //   ),
          // );
          currentTheme.switchTheme();
        },
        tooltip: 'Increment',
        backgroundColor: Colors.blue,
        child: FaIcon(
          FontAwesomeIcons.userMd,
          color: Color(0xFFffffff),
        ),
        elevation: 2.0,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
