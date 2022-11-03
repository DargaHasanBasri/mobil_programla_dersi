import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    starTimer();
  }

  starTimer() async {
    var duration = Duration(seconds: 2);
    return new Timer(duration, loginRoute);
  }

  loginRoute() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => LoginScreen()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: new Color(0xFF4876ff),
              gradient: LinearGradient(
                colors: [
                  Color(0xFF4876ff),
                  Color(0xFF4876ff),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
          ),
          Center(
            child: Container(
              child: Image.asset("images/logo.png"),
              height: 90,
              width: 90,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 77),
            alignment: Alignment.center,
            child: const Text(
              "TeamTrics",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
              ),
            ),
          ),
        ],
      ),
    );
  }
}