import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'login.dart';

class LottiePage extends StatefulWidget {
  @override
  _LottiePageState createState() => _LottiePageState();
}

class _LottiePageState extends State<LottiePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(children: [
        Image.asset("assets/123.jpg"),
        SizedBox(height: 20),
        Text('WELLCOME TO SHOPPYMIANIA',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        InkWell(
          child: Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xff6b52d7),
            ),
            child: Center(
              child: Text(
                'Get Started >',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xfffefefe), fontSize: 20),
              ),
            ),
          ),
          onTap: () {
            print((Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => loginpage()),
            )));
          },
        ),
      ]),
    ));
  }
}
