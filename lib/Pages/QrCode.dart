import 'package:Care4U/Pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:Care4U/Component/config.dart';

// import 'package:firebase_auth/firebase_auth.dart';

class QrCode extends StatefulWidget {
  QrCode({Key key}) : super(key: key);

  @override
  _QrCode createState() => new _QrCode();
}

class _QrCode extends State<QrCode> with TickerProviderStateMixin {
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
                        foregroundColor: Color(0xff0C2231),
                        embeddedImage: NetworkImage(
                            'https://img2.wikia.nocookie.net/__cb20140719160257/disney/images/0/05/Baymax_Render.png'),
                        embeddedImageStyle: QrEmbeddedImageStyle(
                          size: Size(80, 80),
                        ),
                      ),
                    )),
                // Container(
                //   child: Text("datos paciente"),
                // ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: InkWell(
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff5DB2E8),
                          ),
                          color: Color(0xff5DB2E8),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset:
                                  Offset(0, 4), // changes position of shadow
                            ),
                          ]),
                      child: Center(
                        child: Text("Volver inicio",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000))),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/home', (Route<dynamic> route) => false);
                    },
                  ),
                )
              ],
            )));
  }
}
