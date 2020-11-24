import 'package:baymax/Component/config.dart';
import 'package:baymax/Pages/main_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'Pages/singin_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter();
  box = await Hive.openBox('easyTheme');
  runApp(BaymaxApp());
}

/// The entry point of the application.
///
/// Returns a [MaterialApp].
///

class BaymaxApp extends StatefulWidget {
  @override
  _BaymaxApp createState() => _BaymaxApp();
}

class _BaymaxApp extends State<BaymaxApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      print("Changes");
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Example App',
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Color(0xff5DB2E8),
        accentColor: Color(0xffC5EDFC),
        backgroundColor: Color(0xffF6F6F6),
        dialogBackgroundColor: Color(0xffF6F6F6),

        // Define the default font family.
        fontFamily: 'Roboto',
      ),
      darkTheme: ThemeData.dark(),
      themeMode: currentTheme.currentTheme(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainPage(),
      ),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new MainPage(),
      },
    );
  }
}
