import 'package:flutter/material.dart';
import 'package:flutter_lottie_animation_demo/Cartscreen.dart';
import 'package:flutter_lottie_animation_demo/login.dart';
import 'package:flutter_lottie_animation_demo/projectlist.dart';

import 'package:provider/provider.dart';
import 'thirdpage.dart';

import 'display.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Mysetting(),
    ));
  }
}

class Mysetting extends StatefulWidget {
  @override
  _MysettingState createState() => _MysettingState();
}

class _MysettingState extends State<Mysetting> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    // Add your pages here
    dash(),
    CartScreen(),
    ThirdPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          // This function will be called when a bottom navigation item is clicked.
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}

class dash extends StatelessWidget {
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
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search items',
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                Container(
                  width: width,
                  height: height * 0.30,
                  child: Image.asset(
                    'assets/items.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print((Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => displayproduct()),
                          )));
                        },
                        child: Card(
                          margin: const EdgeInsets.all(20),
                          child: SizedBox(
                            width: 320,
                            height: 80,
                            child: ListTile(
                              leading: Image.network(
                                  'https://tse2.mm.bing.net/th?id=OIP.OCNbQ_RkZ1eDL_0VcT7yCgHaE8&pid=Api&P=0&w=300&h=300'),
                              title: const Text(
                                'Cosmatics',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: const Text(
                                  'This is a simple card in Flutter.'),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print((Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => displayproduct()),
                          )));
                          // To do
                        },
                        child: Card(
                          margin: const EdgeInsets.all(20),
                          child: SizedBox(
                            width: 320,
                            height: 80,
                            child: ListTile(
                              leading: Image.network(
                                  'https://tse3.mm.bing.net/th?id=OIP.mQaP4mW6f1neq_2HHDJpYQHaEQ&pid=Api&P=0&w=300&h=300'),
                              title: const Text(
                                'Sports',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: const Text(
                                  'This is a simple card in Flutter.'),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print((Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => displayproduct()),
                          )));
                          // To do
                        },
                        child: Card(
                          margin: const EdgeInsets.all(20),
                          child: SizedBox(
                            width: 320,
                            height: 80,
                            child: ListTile(
                              leading: Image.network(
                                  'https://3.bp.blogspot.com/-7E6deSlK7sg/UpNO_dVRaUI/AAAAAAAAzvo/K2YgxMz1kvQ/s1600/Exist+Autumn-Winter+Formal+Suits+Collection+2013-14+-+www.fashionhuntworld.blogspot.com+-+005.JPG'),
                              title: const Text(
                                'Cloths',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: const Text(
                                  'This is a simple card in Flutter.'),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print((Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => displayproduct()),
                          )));
                        },
                        child: Card(
                          margin: const EdgeInsets.all(20),
                          child: SizedBox(
                            width: 320,
                            height: 80,
                            child: ListTile(
                              leading: Image.network(
                                  'https://tse2.mm.bing.net/th?id=OIP.MPxlBsa-Au6du2Qq4js0PgHaFY&pid=Api&P=0&w=300&h=300'),
                              title: const Text(
                                'Eletronics',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: const Text(
                                  'This is a simple card in Flutter.'),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print((Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => displayproduct()),
                          )));
                          // To do
                        },
                        child: Card(
                          margin: const EdgeInsets.all(20),
                          child: SizedBox(
                            width: 320,
                            height: 80,
                            child: ListTile(
                              leading: Image.network(
                                  'https://tse3.mm.bing.net/th?id=OIP.bbQ1Zf12Mw10XeyKicpQ-QHaHa&pid=Api&P=0&w=300&h=300'),
                              title: const Text(
                                'Grocery',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: const Text(
                                  'This is a simple card in Flutter.'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]))),
    );
  }
}
