import 'package:baymax/Pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:baymax/Component/config.dart';

// import 'package:firebase_auth/firebase_auth.dart';

class Page5 extends StatefulWidget {
  Page5({Key key}) : super(key: key);

  @override
  _Page5 createState() => new _Page5();
}

class _Page5 extends State<Page5> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                    height: 400,
                    margin: EdgeInsets.only(top: 40, bottom: 40),
                    child: Center(
                      child: QrImage(
                        data: 'This QR code has an embedded image as well',
                        version: QrVersions.auto,
                        size: 320,
                        gapless: false,
                        // foregroundColor: Color(color()),
                        embeddedImage: NetworkImage(
                            'https://img2.wikia.nocookie.net/__cb20140719160257/disney/images/0/05/Baymax_Render.png'),
                        embeddedImageStyle: QrEmbeddedImageStyle(
                          size: Size(80, 80),
                        ),
                      ),
                    )),
                Container(
                  child: Text("datos paciente"),
                ),
                Container(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return MainPage();
                          },
                        ),
                      );
                    },
                    child: Text("Volver Inicio"),
                  ),
                )
              ],
            )));
  }
}
