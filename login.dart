import 'package:flutter_lottie_animation_demo/dashboard.dart';
import 'package:flutter_lottie_animation_demo/signin.dart';

import 'login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginpage(),
    ));

class loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/background.png'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: (Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/lignt-1.png'))),
                        )),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: (Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/light-2.png'))),
                        )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: (Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/clock.png'))),
                        )),
                      ),
                      Positioned(
                        child: (Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      (Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                          BorderSide(color: Colors.grey[100]))),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email or Phone number",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            )
                          ],
                        ),
                      )),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        child: (Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Color(0xff777df2),
                                Color.fromRGBO(143, 148, 251, .6),
                              ])),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                        onTap: () {
                          print((Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Mysetting()),
                          )));
                        },
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      (Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Color.fromRGBO(143, 148, 251, 1),
                            fontSize: 17),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Not Registered'),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              color: Color.fromRGBO(143, 148, 251, 1),
                              fontSize: 17),
                        ),
                        onPressed: () {
                          print((Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Second()),
                          )));
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
