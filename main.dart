import 'package:flutter/material.dart';
import 'package:flutter_lottie_animation_demo/dashboard.dart';
import 'package:flutter_lottie_animation_demo/splash_screen.dart';
import 'login.dart';
import 'display.dart';
import 'productinfo.dart';
import 'package:provider/provider.dart';
import 'package:flutter_lottie_animation_demo/projectlist.dart';
import 'package:flutter_lottie_animation_demo/Cartscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Splash(),
      ),
    );
  }
}
