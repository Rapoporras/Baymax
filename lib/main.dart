import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Pages/singin_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(BaymaxApp());
}

/// The entry point of the application.
///
/// Returns a [MaterialApp].
class BaymaxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Firebase Example App',
        theme: ThemeData.light(),
        home: Scaffold(
          body: SignInPage(),
        ));
  }
}
