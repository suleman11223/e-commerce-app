import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_lottie_animation_demo/lottie_page.dart';
import 'package:lottie/lottie.dart';
import 'login.dart';

class Splash extends StatefulWidget {
  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<Splash> with SingleTickerProviderStateMixin {
  var _visible = true;

  AnimationController animationController;
  Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 6);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => LottiePage(),
    ));
  }

  @override
  void initState() {
    super.initState();

    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 5));
    animation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.network(
                'https://lottie.host/9ce4a081-a2a7-4434-b518-2e12f8ed0b76/8ev6Lq4FUB.json',
              )
            ],
          ),
        ],
      ),
    );
  }
}
