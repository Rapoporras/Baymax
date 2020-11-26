import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

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
                        data:
                            'https://taikai.network/en/i4h/challenges/innomakers4health/projects/ckh9feqqtl1sy0707n8qv7c8c',
                        version: QrVersions.auto,
                        size: 320,
                        gapless: false,
                        foregroundColor: Color(0xff0C2231),
                        embeddedImage: NetworkImage(
                            'https://firebasestorage.googleapis.com/v0/b/medicosregistrados.appspot.com/o/cede2ae5-3d63-4fd6-9d08-bf43f9b5a6d3.jpg?alt=media&token=ebf13089-3464-4601-b59a-06e4aec16350'),
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
