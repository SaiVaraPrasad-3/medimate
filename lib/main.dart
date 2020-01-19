

import 'package:flutter/material.dart';
import 'package:medimate/pages/home.dart';
import 'package:medimate/pages/loading.dart';
import 'package:camera/camera.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
  },
  theme: ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.amber[800],
    ),
    textTheme: TextTheme(
        body1: TextStyle(
            color: Color(0xff1b1613),
            fontSize: 20,
            fontFamily: 'Pacifico')),
    buttonColor: Colors.amber[800],
    buttonTheme: ButtonThemeData(padding: EdgeInsets.all(50)),
    backgroundColor: Colors.amber[800],
  ),
));
