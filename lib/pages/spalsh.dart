import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:nedux_diary/pages/homePage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
      Duration(seconds: 2), ()=>
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>homePage(),
        )),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               CircleAvatar(
                   backgroundImage: AssetImage("assets/nedux.png"),
                 radius: 150.0,
               ),

               SizedBox(
                 height: 50,
               ),

               SpinKitDualRing(
                 color: Colors.white,

               ),

               SizedBox(
                 height: 25,
               ),

               Text("Loading...",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 15,
                 fontWeight: FontWeight.bold,
               ),
               )
             ],
          ),
        ],
      ),
    );
  }
}
