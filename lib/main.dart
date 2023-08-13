//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:nedux_diary/pages/homePage.dart';
import 'package:nedux_diary/pages/spalsh.dart';
import 'package:nedux_diary/pages/login.dart';
import 'package:nedux_diary/pages/sign_up.dart';

void main() =>
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,

      //initialRoute: '/homePage',
      //home: Splash(),
      routes: {
        '/': (context) => Splash(),
        '/homePage': (context) => homePage(),
        '/login': (context) => Login(),
        '/sign_up': (context) => SignUp(),
        '/homePage': (context) => homePage(),
      },
    ));


