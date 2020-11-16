import 'package:baymax/Component/fab_bottom_app_bar.dart';

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
  String _lastSelected = 'TAB: 0';

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'TAB: $index';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Text(
          _lastSelected,
          style: TextStyle(fontSize: 32.0),
        ),
      ),
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: 'Tarjeta QR',
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
        onPressed: () {},
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
