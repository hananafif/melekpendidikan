import 'dart:async';

import 'package:melekpendidikan/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4), ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
      return HomeScreen();
    })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Color(0xff14171A),
                    Color(0xff101111)
                  ]
              )
          ),
          child: Center(
            child: SvgPicture.asset("assets/images/logosplash.svg", height: 27),
          )
      ),
    );
  }
}

