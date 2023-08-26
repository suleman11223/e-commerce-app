import 'package:flutter_lottie_animation_demo/dashboard.dart';
import 'package:flutter_lottie_animation_demo/login.dart';

import 'signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp());
}

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width,
                height: height * 0.30,
                child: Image.asset(
                  'assets/background.png',
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'SignUp',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'User Name',
                  suffixIcon: Icon(Icons.face),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  suffixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Confirmed Password',
                  suffixIcon: Icon(Icons.visibility),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      child: Text(
                        'Sign Up',
                        style:
                            TextStyle(color: Color(0xffffffff), fontSize: 17),
                      ),
                      onPressed: () {
                        print((Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => loader()),
                        )));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff6b52d7), // background
                        // foreground
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Text('already have an account!'),
              TextButton(
                child: Text(
                  'Log In',
                  style: TextStyle(color: Color(0xff6b52d7), fontSize: 15),
                ),
                onPressed: () {
                  print((Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => loginpage()),
                  )));
                },
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class loader extends StatelessWidget {
  Future<void> _loadData() async {
    await Future.delayed(Duration(seconds: 6)); // Simulate loading time
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _loadData(),
        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xff6b52d7)),
              ),
            );
          } else {
            // Navigate to the next screen after loading
            Future.delayed(Duration.zero, () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Mysetting()),
              );
            });
            return Center();
          }
        },
      ),
    );
  }
}
