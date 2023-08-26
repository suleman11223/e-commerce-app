import 'package:flutter/material.dart';
import 'package:flutter_lottie_animation_demo/display.dart';
import 'dashboard.dart';
import 'productinfo.dart';
import 'package:flutter_lottie_animation_demo/projectlist.dart';
import 'package:provider/provider.dart';

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

class ProductDetailPage extends StatelessWidget {
  final Product product;

  ProductDetailPage({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            print((Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => displayproduct()),
            )));
          },
        ),
        backgroundColor: Color(0xff6b52d7),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              product.imageUrl,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              product.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              product.description,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Price: \$${product.price.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 65),
            ElevatedButton(
              onPressed: () {
                // Perform some action when the button is pressed
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Added Sucessfully!'),
                  ),
                );
              },
              child: Text('Add to Cart'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff6b52d7), // background
                // foreground
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductDetailPage(
        product: Product(
          name: 'Iphone 15 pro max',
          description:
              'Ahead of the official announcement, a new leak has claimed that c will reportedly feature a new custom button. According to Gizmochina, leaked images of a protective case designed for the iPhone 15 Pro Max have recently emerged online',
          price: 200.99,
          imageUrl:
              'https://imageio.forbes.com/specials-images/imageserve/63fa3390146518bf6a8ba852/Apple--iPhone-15--iPhone-15-Pro--iPhone-15-Pro-Max--iPhone-15-colors--iPhone-15-Pro/0x0.jpg?format=jpg&crop=945,709,x230,y89,safe&width=960',
        ),
      ),
    );
  }
}
