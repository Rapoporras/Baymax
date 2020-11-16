// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:baymax/Pages/Main_page.dart';
import 'package:baymax/Pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

  // Create a new credential
  final GoogleAuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

/// Entrypoint example for various sign-in flows with Firebase.
class SignInPage extends StatefulWidget {
  /// The page title.
  final String title = 'Sign In & Out';

  @override
  State<StatefulWidget> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      //   actions: <Widget>[
      //     Builder(builder: (BuildContext context) {
      //       return FlatButton(
      //         child: const Text('Sign out'),
      //         textColor: Theme.of(context).buttonColor,
      //         onPressed: () async {
      //           final User user = await _auth.currentUser;
      //           if (user == null) {
      //             Scaffold.of(context).showSnackBar(const SnackBar(
      //               content: Text('No one has signed in.'),
      //             ));
      //             return;
      //           }
      //           _signOut();
      //           final String uid = user.uid;
      //           Scaffold.of(context).showSnackBar(SnackBar(
      //             content: Text(uid + ' has successfully signed out.'),
      //           ));
      //         },
      //       );
      //     })
      //   ],
      // ),
      body: Builder(builder: (BuildContext context) {
        return ListView(
          children: [_EmailPasswordForm()],
        );
      }),
    );
  }

  // Example code for sign out.
  void _signOut() async {
    await _auth.signOut();
  }
}

class _EmailPasswordForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EmailPasswordFormState();
}

class _EmailPasswordFormState extends State<_EmailPasswordForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new ClipPath(
                clipper: MyClipper(),
                child: Container(
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                      image: NetworkImage(
                          "https://img.freepik.com/vector-gratis/fondo-acuarela_220290-34.jpg?size=626&ext=jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 150.0, bottom: 100.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Nombre app",
                        style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                      Text(
                        "Login Screen",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Text(
                  "Email",
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      height: 30.0,
                      width: 1.0,
                      color: Colors.grey.withOpacity(0.5),
                      margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                    ),
                    new Expanded(
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Text(
                  "Password",
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      child: Icon(
                        Icons.lock_open,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      height: 30.0,
                      width: 1.0,
                      color: Colors.grey.withOpacity(0.5),
                      margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                    ),
                    new Expanded(
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.amber,
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: FlatButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          splashColor: Color(0xFF4285f4),
                          color: Color(0xFF4285f4),
                          child: new Row(
                            children: <Widget>[
                              new Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              new Expanded(
                                child: Container(),
                              ),
                              new Transform.translate(
                                offset: Offset(15.0, 0.0),
                                child: new Container(
                                  padding: const EdgeInsets.all(5.0),
                                  child: FlatButton(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(28.0)),
                                    splashColor: Colors.white,
                                    color: Colors.white,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              )
                            ],
                          ),
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              _signInWithEmailAndPassword();
                            }
                          }),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: FlatButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          splashColor: Color(0xFFea4335),
                          color: Color(0xFFea4335),
                          child: new Row(
                            children: <Widget>[
                              new Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "LOGIN WITH GOOGLE",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              new Expanded(
                                child: Container(),
                              ),
                              new Transform.translate(
                                offset: Offset(15.0, 0.0),
                                child: new Container(
                                  padding: const EdgeInsets.all(5.0),
                                  child: FlatButton(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(28.0)),
                                    splashColor: Colors.white,
                                    color: Colors.white,
                                    child: FaIcon(
                                      FontAwesomeIcons.google,
                                      color: Color(0xFFea4335),
                                    ),
                                    onPressed: () => {},
                                  ),
                                ),
                              )
                            ],
                          ),
                          onPressed: () {
                            signInWithGoogle().then((result) => {
                                  if (result != null)
                                    {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return MainPage();
                                          },
                                        ),
                                      )
                                    }
                                });
                          }),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        color: Colors.transparent,
                        child: Container(
                          padding: const EdgeInsets.only(left: 20.0),
                          alignment: Alignment.center,
                          child: Text(
                            "¿No tienes cuenta? Registraté",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        onPressed: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                                builder: (_) => RegisterPage()),
                          )
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Example code of how to sign in with email and password.
  void _signInWithEmailAndPassword() async {
    try {
      final User user = (await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      ))
          .user;

      Navigator.of(context).push(
        MaterialPageRoute<void>(builder: (_) => MainPage()),
      );
    } catch (e) {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text("Failed to sign in with Email & Password"),
      ));
    }
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = new Path();
    p.lineTo(size.width, 0.0);
    p.lineTo(size.width, size.height * 0.85);
    p.arcToPoint(
      Offset(0.0, size.height * 0.85),
      radius: const Radius.elliptical(50.0, 10.0),
      rotation: 0.0,
    );
    p.lineTo(0.0, 0.0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
