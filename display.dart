import 'package:flutter/material.dart';
import 'package:flutter_lottie_animation_demo/dashboard.dart';
import 'package:flutter_lottie_animation_demo/productinfo.dart';
import 'package:flutter_lottie_animation_demo/projectlist.dart';
import 'display.dart';

class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    this.name,
    this.description,
    this.price,
    this.imageUrl,
  });
}

void main() {
  runApp(displayproduct());
}

class displayproduct extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Iphone 15 pro max',
      description: 'Apple’s upcoming iPhone 15 Pro Max smartphone',
      price: 400.99,
      imageUrl:
          'https://imageio.forbes.com/specials-images/imageserve/63fa3390146518bf6a8ba852/Apple--iPhone-15--iPhone-15-Pro--iPhone-15-Pro-Max--iPhone-15-colors--iPhone-15-Pro/0x0.jpg?format=jpg&crop=945,709,x230,y89,safe&width=960',
    ),

    // Add more products here...
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Products'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              print((Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mysetting()),
              )));
            },
          ),
          backgroundColor: Color(0xff6b52d7),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(
                products[index].imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(products[index].name),
              subtitle: Text(products[index].description),
              trailing: Text('\$${products[index].price.toStringAsFixed(2)}'),
              onTap: () {
                print((Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductListScreen()),
                )));
                // Handle tap on product here (e.g., navigate to the product detail page)
              },
            );
          },
        ),
      ),
    );
  }
}
