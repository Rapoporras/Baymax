import 'package:baymax/Component/fab_bottom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Main_page extends StatefulWidget {
  Main_page({Key key}) : super(key: key);

  final String title = "hola";

  @override
  _Main_page createState() => new _Main_page();
}

class _Main_page extends State<Main_page> with TickerProviderStateMixin {
  String _lastSelected = 'TAB: 0';

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'TAB: $index';
    });
  }

  void _selectedFab(int index) {
    setState(() {
      _lastSelected = 'FAB: $index';
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
