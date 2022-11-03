import 'package:flutter/material.dart';
import 'package:login_screen/splash_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();

}
class InitState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                color: Color(0xffF5591F),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF4876ff),
                    Color(0xFF4876ff),
                    //dene
                  ],
                )
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 70),
                      child: Image.asset("images/logo.png"),
                      height: 75,
                      width: 100,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 70),
                      alignment: Alignment.center,
                      child: const Text(
                        "TeamTrics",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 40),
                      alignment: Alignment.bottomLeft,
                      child: const Text(
                        "LOG IN",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 40),
                      alignment: Alignment.bottomRight,
                      child: const Text(
                        "SIGN UP",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40,right: 40,top: 70),
              padding: EdgeInsets.only(left: 20,right: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200]
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xFF4876ff),
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40,right: 40,top: 20),
              padding: EdgeInsets.only(left: 20,right: 20),
              decoration: BoxDecoration(
                  color: Colors.grey[200]
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Color(0xFF4876ff),
                decoration: InputDecoration(
                    hintText: "Password",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 45),
              alignment: Alignment.center,
              child: GestureDetector(
                child: Text("Forget your password?"),
              ),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 40, right: 40,top: 35 , bottom: 45),
                padding: EdgeInsets.only(left: 20,right: 20),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF4876ff),
                      Color(0xFF4876ff),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                  ),
                  boxShadow: [BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: Color(0xFF4876ff)
                  )],
                ),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}