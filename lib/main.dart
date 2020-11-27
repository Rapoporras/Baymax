import 'package:Care4U/Component/config.dart';
import 'package:Care4U/Pages/main_page.dart';
import 'package:Care4U/splashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter();
  box = await Hive.openBox('easyTheme');
  box = await Hive.openBox('movilidadreducida');
  box = await Hive.openBox('notificacion');
  runApp(Care4UApp());
}

/// The entry point of the application.
///
/// Returns a [MaterialApp].
///

class Care4UApp extends StatefulWidget {
  @override
  _Care4UApp createState() => _Care4UApp();
}

class _Care4UApp extends State<Care4UApp> {
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
        body: SplashScreen(),
      ),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new MainPage(),
      },
    );
  }
}
